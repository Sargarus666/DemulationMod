.class final Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$GermanTitleDescriptor;
.super Ljava/lang/Object;
.source "OfficialEuropeRomLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GermanTitleDescriptor"
.end annotation


# instance fields
.field final descriptorOffset:I

.field final info0:Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;

.field final info1:Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;

.field final stream0:I

.field final stream1:I


# direct methods
.method constructor <init>(IIILcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;)V
    .locals 0
    .param p1, "descriptorOffset"    # I
    .param p2, "stream0"    # I
    .param p3, "stream1"    # I
    .param p4, "info0"    # Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;
    .param p5, "info1"    # Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p1, p0, Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$GermanTitleDescriptor;->descriptorOffset:I

    .line 291
    iput p2, p0, Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$GermanTitleDescriptor;->stream0:I

    .line 292
    iput p3, p0, Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$GermanTitleDescriptor;->stream1:I

    .line 293
    iput-object p4, p0, Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$GermanTitleDescriptor;->info0:Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;

    .line 294
    iput-object p5, p0, Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$GermanTitleDescriptor;->info1:Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;

    .line 295
    return-void
.end method
