.class public final enum Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
.super Ljava/lang/Enum;
.source "RomSelectionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomSelectionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/RomSelectionStore$SourceRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

.field public static final enum AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

.field public static final enum BASE:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

.field public static final enum MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

.field public static final enum TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;


# instance fields
.field final token:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    .locals 4

    .line 37
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->BASE:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    sget-object v2, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    sget-object v3, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    const/4 v1, 0x0

    const-string v2, "base"

    const-string v3, "BASE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->BASE:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 39
    new-instance v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    const/4 v1, 0x1

    const-string v2, "media_mod"

    const-string v3, "MEDIA_MOD"

    invoke-direct {v0, v3, v1, v2}, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 40
    new-instance v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    const/4 v1, 0x2

    const-string v2, "translation"

    const-string v3, "TRANSLATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 41
    new-instance v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    const/4 v1, 0x3

    const-string v2, "audio_mod"

    const-string v3, "AUDIO_MOD"

    invoke-direct {v0, v3, v1, v2}, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 37
    invoke-static {}, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->$values()[Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->$VALUES:[Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->token:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    .locals 1

    .line 37
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->$VALUES:[Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    return-object v0
.end method


# virtual methods
.method public isOverlay()Z
    .locals 1

    .line 45
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->BASE:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
