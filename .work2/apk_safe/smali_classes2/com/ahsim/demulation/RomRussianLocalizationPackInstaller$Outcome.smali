.class public final Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;
.super Ljava/lang/Object;
.source "RomRussianLocalizationPackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Outcome"
.end annotation


# instance fields
.field public final glyphBitmapAssets:I

.field public final snapshot:Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

.field public final textAssets:I


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;II)V
    .locals 0
    .param p1, "snapshot"    # Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    .param p2, "textAssets"    # I
    .param p3, "glyphBitmapAssets"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;->snapshot:Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    .line 18
    iput p2, p0, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;->textAssets:I

    .line 19
    iput p3, p0, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;->glyphBitmapAssets:I

    .line 20
    return-void
.end method
