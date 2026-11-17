.class public final Lcom/ahsim/demulation/RazorGameRomStore$Entry;
.super Ljava/lang/Object;
.source "RazorGameRomStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorGameRomStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final sha256:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sha256"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ahsim/demulation/RazorGameRomStore$Entry;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/ahsim/demulation/RazorGameRomStore$Entry;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/ahsim/demulation/RazorGameRomStore$Entry;->sha256:Ljava/lang/String;

    .line 29
    return-void
.end method
