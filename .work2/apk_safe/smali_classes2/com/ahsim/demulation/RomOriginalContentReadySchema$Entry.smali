.class public final Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;
.super Ljava/lang/Object;
.source "RomOriginalContentReadySchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomOriginalContentReadySchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final exactOriginalContent:Z

.field public final executableCode:Z

.field public final firstReadyFormatVersion:I

.field public final id:Ljava/lang/String;

.field public final kind:Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;

.field public final migrationStage:Ljava/lang/String;

.field public final normalization:Ljava/lang/String;

.field public final relativePath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "kind"    # Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;
    .param p4, "migrationStage"    # Ljava/lang/String;
    .param p5, "firstReadyFormatVersion"    # I
    .param p6, "exactOriginalContent"    # Z
    .param p7, "executableCode"    # Z
    .param p8, "normalization"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;->id:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;->relativePath:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;->kind:Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;

    .line 44
    iput-object p4, p0, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;->migrationStage:Ljava/lang/String;

    .line 45
    iput p5, p0, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;->firstReadyFormatVersion:I

    .line 46
    iput-boolean p6, p0, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;->exactOriginalContent:Z

    .line 47
    iput-boolean p7, p0, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;->executableCode:Z

    .line 48
    iput-object p8, p0, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;->normalization:Ljava/lang/String;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZZLjava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZZLjava/lang/String;)V

    return-void
.end method
