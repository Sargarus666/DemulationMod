.class public final Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
.super Ljava/lang/Object;
.source "RomSelectionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomSelectionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverlaySelection"
.end annotation


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final profileId:Ljava/lang/String;

.field public final role:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

.field public final sha256:Ljava/lang/String;

.field public final size:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "size"    # J
    .param p6, "sha256"    # Ljava/lang/String;
    .param p7, "profileId"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->isOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iput-object p1, p0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->role:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 78
    iput-object p2, p0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    .line 79
    iput-object p3, p0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->displayName:Ljava/lang/String;

    .line 80
    iput-wide p4, p0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->size:J

    .line 81
    invoke-static {p6}, Lcom/ahsim/demulation/RomSelectionStore;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 82
    invoke-static {p7}, Lcom/ahsim/demulation/RomSelectionStore;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    .line 83
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overlay role required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomSelectionStore-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;-><init>(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
