.class public final enum Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;
.super Ljava/lang/Enum;
.source "RomImageNormalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomImageNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContainerFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

.field public static final enum LINEAR:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

.field public static final enum SMD_INTERLEAVED:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;
    .locals 2

    .line 25
    sget-object v0, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->LINEAR:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    sget-object v1, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->SMD_INTERLEAVED:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    filled-new-array {v0, v1}, [Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->LINEAR:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    .line 27
    new-instance v0, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    const-string v1, "SMD_INTERLEAVED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->SMD_INTERLEAVED:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    .line 25
    invoke-static {}, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->$values()[Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->$VALUES:[Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;
    .locals 1

    .line 25
    sget-object v0, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->$VALUES:[Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    return-object v0
.end method
