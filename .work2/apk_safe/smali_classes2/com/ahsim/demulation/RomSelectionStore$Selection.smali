.class public final Lcom/ahsim/demulation/RomSelectionStore$Selection;
.super Ljava/lang/Object;
.source "RomSelectionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomSelectionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selection"
.end annotation


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final profileId:Ljava/lang/String;

.field public final sha256:Ljava/lang/String;

.field public final size:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "sha256"    # Ljava/lang/String;
    .param p6, "profileId"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    .line 58
    iput-object p2, p0, Lcom/ahsim/demulation/RomSelectionStore$Selection;->displayName:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    .line 60
    invoke-static {p5}, Lcom/ahsim/demulation/RomSelectionStore;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomSelectionStore$Selection;->sha256:Ljava/lang/String;

    .line 61
    invoke-static {p6}, Lcom/ahsim/demulation/RomSelectionStore;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomSelectionStore$Selection;->profileId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomSelectionStore-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RomSelectionStore$Selection;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
