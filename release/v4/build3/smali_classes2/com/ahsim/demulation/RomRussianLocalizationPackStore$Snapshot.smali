.class public final Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
.super Ljava/lang/Object;
.source "RomRussianLocalizationPackStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomRussianLocalizationPackStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public final assetCount:I

.field public final generation:Ljava/lang/String;

.field public final installRoot:Ljava/io/File;

.field public final payloadBytes:J

.field public final profileId:Ljava/lang/String;

.field public final sourceSha256:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "installRoot"    # Ljava/io/File;
    .param p2, "generation"    # Ljava/lang/String;
    .param p3, "sourceSha256"    # Ljava/lang/String;
    .param p4, "profileId"    # Ljava/lang/String;
    .param p5, "assetCount"    # I
    .param p6, "payloadBytes"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->installRoot:Ljava/io/File;

    .line 34
    iput-object p2, p0, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->generation:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->profileId:Ljava/lang/String;

    .line 37
    iput p5, p0, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->assetCount:I

    .line 38
    iput-wide p6, p0, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->payloadBytes:J

    .line 39
    return-void
.end method
