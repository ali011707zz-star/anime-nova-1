.class public final Lcom/facebook/ads/redexgen/X/iy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7j;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7j;

.field public final synthetic A01:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iy;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7j;Ljava/lang/Runnable;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87699
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iy;->A01:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iy;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x91

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iy;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x42t
        0x46t
        0x42t
        0x15t
        0x15t
        0x44t
        0x13t
        0x11t
        0x4dt
        0x68t
        0x6dt
        0x7ct
        0x78t
        0x69t
        0x7et
        0x2ct
        0x65t
        0x7ft
        0x2ct
        0x62t
        0x79t
        0x60t
        0x60t
        0x2ct
        0x63t
        0x62t
        0x2ct
        0x60t
        0x63t
        0x6dt
        0x68t
        0x45t
        0x62t
        0x78t
        0x69t
        0x7et
        0x7ft
        0x78t
        0x65t
        0x78t
        0x65t
        0x6dt
        0x60t
        0x4dt
        0x68t
        0x3bt
        0x1ct
        0x6t
        0x17t
        0x0t
        0x1t
        0x6t
        0x1bt
        0x6t
        0x1bt
        0x13t
        0x1et
        0x52t
        0x1bt
        0x1ft
        0x2t
        0x0t
        0x17t
        0x1t
        0x1t
        0x1bt
        0x1dt
        0x1ct
        0x52t
        0x14t
        0x1bt
        0x0t
        0x17t
        0x16t
        0x3ft
        0x30t
        0x1t
        0x3ft
        0x3dt
        0x2at
        0x37t
        0x28t
        0x37t
        0x2at
        0x27t
        0x65t
        0x6at
        0x60t
        0x76t
        0x6bt
        0x6dt
        0x60t
        0x2at
        0x6dt
        0x6at
        0x70t
        0x61t
        0x6at
        0x70t
        0x2at
        0x65t
        0x67t
        0x70t
        0x6dt
        0x6bt
        0x6at
        0x2at
        0x52t
        0x4dt
        0x41t
        0x53t
        0x22t
        0x33t
        0x2at
        0x6dt
        0x6ct
        0x4bt
        0x6ct
        0x76t
        0x67t
        0x70t
        0x71t
        0x76t
        0x6bt
        0x76t
        0x6bt
        0x63t
        0x6et
        0x4et
        0x6dt
        0x65t
        0x65t
        0x6bt
        0x6ct
        0x65t
        0x4bt
        0x6ft
        0x72t
        0x70t
        0x67t
        0x71t
        0x71t
        0x6bt
        0x6dt
        0x6ct
    .end array-data
.end method


# virtual methods
.method public final AEC(Lcom/facebook/ads/redexgen/X/jz;Ljava/lang/String;Z)V
    .locals 6

    .line 87700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N2;->A0C()V

    .line 87701
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 87702
    .local v0, "clickUrlDefined":Z
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 87703
    :try_start_0
    const/16 v2, 0x55

    const/16 v1, 0x1a

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iy;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87704
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Wu;->A0D(Lcom/facebook/ads/redexgen/X/gi;Landroid/content/Intent;)Z

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Ws; {:try_start_0 .. :try_end_0} :catch_0

    .line 87706
    :catch_0
    move-exception v1

    .line 87707
    .local v1, "e":Lcom/facebook/ads/redexgen/X/Ws;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ws;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ws;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 87708
    .local v2, "exceptionToLog":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87709
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A04:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 87710
    const/16 v2, 0x4a

    const/16 v1, 0xb

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iy;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87711
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/Ws;
    .end local v2    # "exceptionToLog":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public final AED(Lcom/facebook/ads/redexgen/X/jz;)V
    .locals 1

    .line 87712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N2;->A04()V

    .line 87713
    return-void
.end method

.method public final AEE(Lcom/facebook/ads/redexgen/X/jz;)V
    .locals 1

    .line 87714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N2;->A05()V

    .line 87715
    return-void
.end method

.method public final AEF(Lcom/facebook/ads/redexgen/X/jz;)V
    .locals 6

    .line 87716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    if-eq p1, v0, :cond_0

    .line 87717
    return-void

    .line 87718
    :cond_0
    if-nez p1, :cond_1

    .line 87719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87720
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0X:I

    const/16 v2, 0x8

    const/16 v1, 0x25

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iy;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 87721
    const/16 v2, 0x6f

    const/4 v1, 0x3

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iy;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87722
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/iy;->AEG(Lcom/facebook/ads/redexgen/X/jz;Lcom/facebook/ads/AdError;)V

    .line 87723
    return-void

    .line 87724
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0H()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    .line 87726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7j;->A01(Lcom/facebook/ads/redexgen/X/7j;)V

    .line 87727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/N2;->A0F(Lcom/facebook/ads/redexgen/X/N1;)V

    .line 87728
    return-void
.end method

.method public final AEG(Lcom/facebook/ads/redexgen/X/jz;Lcom/facebook/ads/AdError;)V
    .locals 4

    .line 87729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    if-eq p1, v0, :cond_0

    .line 87730
    return-void

    .line 87731
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0H()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/j0;->A0Q(Lcom/facebook/ads/redexgen/X/N1;)V

    .line 87733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Vm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87735
    return-void
.end method

.method public final AEH(Lcom/facebook/ads/redexgen/X/jz;)V
    .locals 5

    const/16 v2, 0x2d

    const/16 v1, 0x1d

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iy;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iy;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x72

    const/16 v1, 0x1f

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iy;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N2;->A0D()V

    .line 87737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0O()V

    .line 87738
    return-void
.end method

.method public final AEI()V
    .locals 1

    .line 87739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N2;->A08()V

    .line 87740
    return-void
.end method

.method public final AEJ()V
    .locals 1

    .line 87741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N2;->A06()V

    .line 87742
    return-void
.end method

.method public final AEK()V
    .locals 1

    .line 87743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N2;->A07()V

    .line 87744
    return-void
.end method

.method public final onInterstitialActivityDestroyed()V
    .locals 1

    .line 87745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iy;->A00:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N2;->A02()V

    .line 87746
    return-void
.end method
