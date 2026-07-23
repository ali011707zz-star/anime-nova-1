.class public final Lcom/facebook/ads/redexgen/X/If;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5h;->A1H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5h;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 808
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "72ztA7TlK5AWnMBFqm0ulEGrNikWU87c"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "q9jSjTIXJJeud4mNFdEJpcs0aBWF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6LBG7Z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4a80CIrFExPHnWcdf8FRxARvXokzjsAY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hmt020juZcOK2XVUFVfIwXvCI0upMeB5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bPuxHbTn8HkB22ksZqTc8mW6RF8jNMxu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KvPASdtvPFN6v"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "W7wSubo8j20OAA03KxoOzu7JM99EpBz5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/If;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40387
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 4

    .line 40388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A03(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Kc;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    .line 40389
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A03(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/dm;->AFw(Z)V

    .line 40391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A01(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 40392
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(Lcom/facebook/ads/redexgen/X/5h;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dm;->ADc(I)V

    .line 40393
    return-void

    .line 40394
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A03(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ji;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    .line 40395
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A03(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/dm;->AFw(Z)V

    .line 40397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A01(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto :goto_0

    .line 40398
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/If;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/If;->A01:[Ljava/lang/String;

    const-string v1, "jNYMJATRfaQqNW2YkrgQ7vcVmM2IUm0K"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "cX4sd5TjwRWpCL8J3hPSalfD2n4ZIotM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/dm;->AFw(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFV(F)V
    .locals 2

    .line 40399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    .line 40400
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(Lcom/facebook/ads/redexgen/X/5h;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 40401
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dm;->ADw(F)V

    .line 40402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A05(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A05(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/If;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(Lcom/facebook/ads/redexgen/X/5h;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->A07(I)V

    .line 40404
    :cond_0
    return-void
.end method
