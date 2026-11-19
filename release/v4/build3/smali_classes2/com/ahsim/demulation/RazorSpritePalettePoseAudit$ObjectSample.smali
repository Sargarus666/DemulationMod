.class public final Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;
.super Ljava/lang/Object;
.source "RazorSpritePalettePoseAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpritePalettePoseAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectSample"
.end annotation


# instance fields
.field public final count:I

.field private final rawFacings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final sourceType:I


# direct methods
.method private constructor <init>(IILjava/util/TreeMap;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p3, "facing":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;->sourceType:I

    iput p2, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;->count:I

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;->rawFacings:Ljava/util/Map;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(IILjava/util/TreeMap;Lcom/ahsim/demulation/RazorSpritePalettePoseAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;-><init>(IILjava/util/TreeMap;)V

    return-void
.end method


# virtual methods
.method public rawFacingCounts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;->rawFacings:Ljava/util/Map;

    return-object v0
.end method
