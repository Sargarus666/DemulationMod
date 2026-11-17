.class final Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;
.super Ljava/lang/Object;
.source "OfficialEuropeRomLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompressedStreamInfo"
.end annotation


# instance fields
.field final compressedBytes:I

.field final decodedBytes:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "compressedBytes"    # I
    .param p2, "decodedBytes"    # I

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput p1, p0, Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;->compressedBytes:I

    .line 278
    iput p2, p0, Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter$CompressedStreamInfo;->decodedBytes:I

    .line 279
    return-void
.end method
