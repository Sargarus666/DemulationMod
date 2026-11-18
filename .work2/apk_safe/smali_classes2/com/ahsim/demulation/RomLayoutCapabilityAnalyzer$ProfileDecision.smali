.class final Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;
.super Ljava/lang/Object;
.source "RomLayoutCapabilityAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProfileDecision"
.end annotation


# instance fields
.field final exact:Z

.field final exactKind:I

.field final family:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field final label:Ljava/lang/String;

.field final profileId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "family"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;
    .param p2, "profileId"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "exact"    # Z
    .param p5, "exactKind"    # I

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->family:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 201
    iput-object p2, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->profileId:Ljava/lang/String;

    .line 202
    iput-object p3, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->label:Ljava/lang/String;

    .line 203
    iput-boolean p4, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->exact:Z

    .line 204
    iput p5, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->exactKind:I

    .line 205
    return-void
.end method
