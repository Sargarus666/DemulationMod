.class public final Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;
.super Ljava/lang/Object;
.source "RomLayoutCapabilityAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Capability"
.end annotation


# instance fields
.field public final evidence:Ljava/lang/String;

.field public final state:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;
    .param p2, "evidence"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;->state:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    .line 71
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;->evidence:Ljava/lang/String;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    return-void
.end method
