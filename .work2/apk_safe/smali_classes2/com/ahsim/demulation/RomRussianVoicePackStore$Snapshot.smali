.class public final Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;
.super Ljava/lang/Object;
.source "RomRussianVoicePackStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomRussianVoicePackStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public final generation:Ljava/lang/String;

.field public final installRoot:Ljava/io/File;

.field public final payloadBytes:J

.field public final sourceSha256:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "installRoot"    # Ljava/io/File;
    .param p2, "generation"    # Ljava/lang/String;
    .param p3, "sourceSha256"    # Ljava/lang/String;
    .param p4, "payloadBytes"    # J

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->installRoot:Ljava/io/File;

    .line 30
    iput-object p2, p0, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->generation:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->payloadBytes:J

    .line 33
    return-void
.end method
