.class public final Lcom/facebook/ads/redexgen/X/de;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/55;->A0u(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/55;

.field public final synthetic A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2718
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BCZIhVNDQDCh76DtmyNtHAlhFMDATvVt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BpxJG5PSy8RrC8gDj9F3m7wY3N24XhJv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ijlTTH3qZVfV3k2EcDrdjmOyjm2IhbRx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nG1o2sYesXs6M57Sh7jiiyWqAFcBt7Ov"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7oLodlqz52tT27TMmX1w5sX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BpgZ9fjSEMvqLyG8EKapvQvzg2h53TAK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RGI6AKM997BtZD7KRZnSFDXmKos5ru"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RnEGi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/de;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/55;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 80260
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/de;->A00:Lcom/facebook/ads/redexgen/X/55;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/de;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 80261
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 80262
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/de;->A00:Lcom/facebook/ads/redexgen/X/55;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/de;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0y(Lcom/facebook/ads/redexgen/X/55;)Z

    move-result v1

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/55;->A0n(Lcom/facebook/ads/redexgen/X/55;ZZ)V

    .line 80263
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/de;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/de;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0C(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/de;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0C(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/de;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/de;->A02:[Ljava/lang/String;

    const-string v1, "ljAGPopRVKGa2tZDYlD1hZgNr97DsQwm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "7Tfn34ptiafVbRMsYTiCD1YlzW67R4Al"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/M3;->destroy()V

    .line 80265
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
