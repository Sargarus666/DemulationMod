.class public final Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;
.super Ljava/lang/Object;
.source "RomRuntimeSourceVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomRuntimeSourceVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final bytes:[B

.field public final sha256:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "sha256"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;->bytes:[B

    .line 30
    iput-object p2, p0, Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;->sha256:Ljava/lang/String;

    .line 31
    return-void
.end method
