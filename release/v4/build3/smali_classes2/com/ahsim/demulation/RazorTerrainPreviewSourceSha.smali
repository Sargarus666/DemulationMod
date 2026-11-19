.class public final Lcom/ahsim/demulation/RazorTerrainPreviewSourceSha;
.super Ljava/lang/Object;
.source "RazorTerrainPreviewSourceSha.java"


# static fields
.field private static final ONE:Ljava/lang/String; = "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

.field private static final TWO:Ljava/lang/String; = "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAttested(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sha"    # Ljava/lang/String;

    .line 13
    if-eqz p0, :cond_1

    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
