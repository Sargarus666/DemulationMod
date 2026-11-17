.class public final enum Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;
.super Ljava/lang/Enum;
.source "DuneHackR82cRazorStructureDamageAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryEvidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

.field public static final enum NO_UNIQUE_VERIFIED_ROUTE:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

.field public static final enum VERIFIED_INLINE_SUBTRACTION:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;
    .locals 2

    .line 27
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;->VERIFIED_INLINE_SUBTRACTION:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;->NO_UNIQUE_VERIFIED_ROUTE:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    filled-new-array {v0, v1}, [Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    const-string v1, "VERIFIED_INLINE_SUBTRACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;->VERIFIED_INLINE_SUBTRACTION:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    .line 29
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    const-string v1, "NO_UNIQUE_VERIFIED_ROUTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;->NO_UNIQUE_VERIFIED_ROUTE:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    .line 27
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;->$values()[Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;
    .locals 1

    .line 27
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    return-object v0
.end method
