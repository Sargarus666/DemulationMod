// Build the static deployment: copy site/ source into dist/ and stage downloads.
// Usage: node scripts/build-site.mjs <sourceDir> <outDir> <projectDir>
import { rmSync, mkdirSync, readdirSync, statSync, copyFileSync, existsSync } from 'node:fs'
import { join, resolve } from 'node:path'

const [sourceDir, outDir, projectDir] = process.argv.slice(2)
if (!sourceDir || !outDir) {
  console.error('Usage: build-site.mjs <sourceDir> <outDir> [projectDir]')
  process.exit(1)
}

const src = resolve(sourceDir)
const out = resolve(outDir)
if (!existsSync(src)) {
  console.error(`source directory not found: ${src}`)
  process.exit(1)
}

rmSync(out, { recursive: true, force: true })
mkdirSync(out, { recursive: true })

function copyTree(from, to) {
  for (const entry of readdirSync(from)) {
    const a = join(from, entry)
    const b = join(to, entry)
    if (statSync(a).isDirectory()) {
      mkdirSync(b, { recursive: true })
      copyTree(a, b)
    } else {
      copyFileSync(a, b)
    }
  }
}
copyTree(src, out)

// Stage downloadable artifacts (kept inside PROJECT_DIR).
const project = resolve(projectDir || join(src, '..'))
const downloads = join(out, 'download')
mkdirSync(downloads, { recursive: true })
const assets = [
  [join(project, 'release', 'v3', 'DemulationMod_HUD_Sega_v3.apk'), 'DemulationMod_HUD_Sega_v3.apk'],
  [join(project, 'release', 'v3', 'sources_v3.zip'), 'sources_v3.zip'],
]
for (const [from, name] of assets) {
  if (existsSync(from)) {
    copyFileSync(from, join(downloads, name))
    console.log(`staged ${name}`)
  } else {
    console.log(`missing (skipped): ${from}`)
  }
}

if (!existsSync(join(out, 'index.html'))) {
  console.error('build output is missing index.html')
  process.exit(1)
}
console.log(`static build ready: ${out}`)
