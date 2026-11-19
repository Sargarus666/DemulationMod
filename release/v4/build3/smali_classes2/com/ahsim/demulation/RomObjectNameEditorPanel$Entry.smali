.class final Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;
.super Ljava/lang/Object;
.source "RomObjectNameEditorPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomObjectNameEditorPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field final fremen:Z

.field final type:I

.field final unit:Z


# direct methods
.method constructor <init>(ZIZ)V
    .locals 0
    .param p1, "unit"    # Z
    .param p2, "type"    # I
    .param p3, "fremen"    # Z

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->unit:Z

    iput p2, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    iput-boolean p3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->fremen:Z

    return-void
.end method
