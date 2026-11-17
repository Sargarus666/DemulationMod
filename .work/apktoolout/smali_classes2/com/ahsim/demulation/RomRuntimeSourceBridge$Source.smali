.class public final Lcom/ahsim/demulation/RomRuntimeSourceBridge$Source;
.super Ljava/lang/Object;
.source "RomRuntimeSourceBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomRuntimeSourceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Source"
.end annotation


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final rom:[B

.field public final sha256:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rom"    # [B
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "sha256"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ahsim/demulation/RomRuntimeSourceBridge$Source;->rom:[B

    .line 21
    iput-object p2, p0, Lcom/ahsim/demulation/RomRuntimeSourceBridge$Source;->displayName:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/ahsim/demulation/RomRuntimeSourceBridge$Source;->sha256:Ljava/lang/String;

    .line 23
    return-void
.end method
