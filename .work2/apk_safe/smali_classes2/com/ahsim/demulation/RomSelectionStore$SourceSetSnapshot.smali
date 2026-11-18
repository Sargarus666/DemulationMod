.class public final Lcom/ahsim/demulation/RomSelectionStore$SourceSetSnapshot;
.super Ljava/lang/Object;
.source "RomSelectionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomSelectionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceSetSnapshot"
.end annotation


# instance fields
.field public final audioMod:Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

.field public final base:Lcom/ahsim/demulation/RomSelectionStore$Selection;

.field public final mediaMod:Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

.field public final translation:Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 0
    .param p1, "base"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "mediaMod"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .param p3, "translation"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .param p4, "audioMod"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/ahsim/demulation/RomSelectionStore$SourceSetSnapshot;->base:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    .line 96
    iput-object p2, p0, Lcom/ahsim/demulation/RomSelectionStore$SourceSetSnapshot;->mediaMod:Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 97
    iput-object p3, p0, Lcom/ahsim/demulation/RomSelectionStore$SourceSetSnapshot;->translation:Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 98
    iput-object p4, p0, Lcom/ahsim/demulation/RomSelectionStore$SourceSetSnapshot;->audioMod:Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomSelectionStore-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RomSelectionStore$SourceSetSnapshot;-><init>(Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    return-void
.end method
