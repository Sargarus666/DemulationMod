.class final Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;
.super Ljava/lang/Object;
.source "RomSelectionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomSelectionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DocumentMetadata"
.end annotation


# instance fields
.field final displayName:Ljava/lang/String;

.field final size:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "size"    # J

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->displayName:Ljava/lang/String;

    .line 306
    iput-wide p2, p0, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->size:J

    .line 307
    return-void
.end method
