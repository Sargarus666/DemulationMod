.class public final Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
.super Ljava/lang/Object;
.source "RomGraphicsMediaOverlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final group:Ljava/lang/String;

.field public final length:I

.field public final relativePath:Ljava/lang/String;

.field public final sha256:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "sha256"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->group:Ljava/lang/String;

    .line 46
    iput p3, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->length:I

    .line 47
    iput-object p4, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->sha256:Ljava/lang/String;

    .line 48
    return-void
.end method
