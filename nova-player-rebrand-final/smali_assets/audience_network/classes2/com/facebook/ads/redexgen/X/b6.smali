.class public final Lcom/facebook/ads/redexgen/X/b6;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/fp;",
            ">;"
        }
    .end annotation
.end field

.field public A08:Z

.field public final A09:Landroid/graphics/Paint;

.field public final A0A:Landroid/graphics/Paint;

.field public final A0B:Landroid/graphics/Paint;

.field public final A0C:Landroid/graphics/Path;

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Landroid/text/TextPaint;

.field public final A0F:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2625
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uAADS07vuTt2bWOOIRXTK9bzUqfZPQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cn6RXotf6zZwAeB3lSiWP6IveEHpbDAc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fqHIMQcIn36ckD7HtV78"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rZKbd1qqPOm2jxQd70eAyB6uz1tOgPbY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sxaVjDfKgR8b2unSnmAv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1UAN8XI5lzImEv5q"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fr57qg0eWkx6ppTTUiLmxnyxz7CpPvLf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EJnXX6RVHz5b530rZ3EkT3HbTheO6nDW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b6;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b6;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 77388
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77389
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Landroid/graphics/Paint;

    .line 77390
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Landroid/graphics/Paint;

    .line 77391
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Landroid/graphics/Path;

    .line 77392
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Landroid/text/TextPaint;

    .line 77393
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0B:Landroid/graphics/Paint;

    .line 77394
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Landroid/os/Handler;

    .line 77395
    new-instance v0, Lcom/facebook/ads/redexgen/X/LQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LQ;-><init>(Lcom/facebook/ads/redexgen/X/b6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Ljava/lang/Runnable;

    .line 77396
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    const/16 v0, 0x24

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77397
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77399
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v0, 0xbf

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77400
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Landroid/graphics/Paint;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77401
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 77403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 77404
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77405
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Landroid/text/TextPaint;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 77406
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0B:Landroid/graphics/Paint;

    const/16 v0, 0xd4

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77407
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0B:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77408
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b6;->A07()V

    .line 77409
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/b6;)Landroid/os/Handler;
    .locals 0

    .line 77410
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/b6;)Ljava/lang/Runnable;
    .locals 0

    .line 77411
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/b6;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 12

    .line 77412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77413
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v5, p0, Lcom/facebook/ads/redexgen/X/b6;->A00:I

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-gtz v5, :cond_8

    .line 77414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77416
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77417
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A04:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A04:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77419
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77420
    :cond_1
    const/16 v2, 0x2f

    const/4 v1, 0x4

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77421
    const/16 v2, 0x15

    const/4 v1, 0x6

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77422
    const/16 v2, 0xc

    const/16 v1, 0x9

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77423
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A03:J

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_7

    .line 77424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/b6;->A03:J

    sub-long/2addr v0, v7

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 77425
    .local v3, "rawMs":J
    const-wide/32 v10, 0x36ee80

    div-long v0, v6, v10

    long-to-int v9, v0

    .line 77426
    .local v1, "hours":I
    rem-long/2addr v6, v10

    .line 77427
    const-wide/32 v10, 0xea60

    div-long v0, v6, v10

    long-to-int v8, v0

    .line 77428
    .local v8, "minutes":I
    rem-long/2addr v6, v10

    .line 77429
    const-wide/16 v0, 0x3e8

    div-long/2addr v6, v0

    long-to-int v5, v6

    .line 77430
    .local v6, "seconds":I
    if-lez v9, :cond_2

    .line 77431
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77432
    const/16 v2, 0x55

    const/4 v1, 0x2

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77433
    :cond_2
    if-gtz v9, :cond_3

    if-lez v8, :cond_4

    .line 77434
    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77435
    const/16 v2, 0x57

    const/4 v1, 0x2

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77436
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77437
    const/16 v2, 0x59

    const/4 v1, 0x5

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77438
    .end local v1    # "hours":I
    .end local v3    # "rawMs":J
    .end local v6    # "seconds":I
    .end local v8    # "minutes":I
    :goto_0
    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A07:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A07:Ljava/lang/ref/WeakReference;

    .line 77440
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/b6;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/b6;->A0H:[Ljava/lang/String;

    const-string v1, "6PZDnglzGPDeedrgHm7ot6ei2FxWRy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "hXyehySpXKvAoovv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v5, :cond_6

    .line 77441
    .end local v1
    :cond_5
    const/16 v2, 0x3a

    const/16 v1, 0x1b

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77442
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A05:Ljava/lang/String;

    .line 77443
    const/high16 v7, -0x31000000

    .line 77444
    .local v1, "maxWidth":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A05:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_9

    aget-object v2, v6, v3

    .line 77445
    .local v6, "line":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Landroid/text/TextPaint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 77446
    .end local v6    # "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 77447
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/fp;

    .line 77448
    .local v1, "vc":Lcom/facebook/ads/redexgen/X/fp;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 77449
    :cond_7
    const/16 v2, 0x33

    const/4 v1, 0x7

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 77450
    :cond_8
    const/16 v2, 0x1b

    const/4 v1, 0x5

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77451
    iget v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77452
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77453
    iget v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A00:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 77454
    :cond_9
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A02:I

    .line 77455
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b6;->invalidateSelf()V

    .line 77456
    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x5e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/b6;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0xct
        0x1at
        0x46t
        0x79t
        0x75t
        0x67t
        0x2at
        0x30t
        0x65t
        0x2at
        0x23t
        0x65t
        0x3ct
        0x30t
        0x5ct
        0x7ft
        0x71t
        0x74t
        0x75t
        0x74t
        0x30t
        0x0t
        0x18t
        0x4t
        0x7t
        0x18t
        0x6t
        0x1dt
        0x3ft
        0x2ct
        0x3at
        0x7et
        0x7t
        0x20t
        0x27t
        0x3at
        0x27t
        0x2ft
        0x22t
        0x27t
        0x34t
        0x27t
        0x20t
        0x29t
        0x60t
        0x60t
        0x60t
        0x6et
        0x59t
        0x56t
        0x1dt
        0x53t
        0x68t
        0x6dt
        0x68t
        0x69t
        0x71t
        0x68t
        0x6bt
        0x54t
        0x58t
        0x4at
        0x5ct
        0x5ft
        0x54t
        0x51t
        0x54t
        0x49t
        0x44t
        0x1dt
        0x7et
        0x55t
        0x58t
        0x5et
        0x56t
        0x58t
        0x4ft
        0x1dt
        0x53t
        0x52t
        0x49t
        0x1dt
        0x4et
        0x58t
        0x49t
        0x3ct
        0x74t
        0x7at
        0x37t
        0x59t
        0xat
        0x4bt
        0x4dt
        0x45t
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 0

    .line 77457
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A03()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/b6;)Z
    .locals 0

    .line 77458
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A08:Z

    return p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 77459
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A00:I

    .line 77460
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:I

    .line 77461
    const/16 v2, 0x20

    const/16 v1, 0xf

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A05:Ljava/lang/String;

    .line 77462
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A02:I

    .line 77463
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Ljava/lang/String;

    .line 77464
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A03:J

    .line 77465
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/b6;->A07:Ljava/lang/ref/WeakReference;

    .line 77466
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/b6;->A0D(Z)V

    .line 77467
    return-void
.end method

.method public final A08(II)V
    .locals 0

    .line 77468
    iput p1, p0, Lcom/facebook/ads/redexgen/X/b6;->A00:I

    .line 77469
    iput p2, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:I

    .line 77470
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A03()V

    .line 77471
    return-void
.end method

.method public final A09(J)V
    .locals 0

    .line 77472
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/b6;->A03:J

    .line 77473
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A03()V

    .line 77474
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/fp;)V
    .locals 1

    .line 77475
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A07:Ljava/lang/ref/WeakReference;

    .line 77476
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A03()V

    .line 77477
    return-void
.end method

.method public final A0B(Ljava/lang/String;)V
    .locals 0

    .line 77478
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b6;->A04:Ljava/lang/String;

    .line 77479
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A03()V

    .line 77480
    return-void
.end method

.method public final A0C(Ljava/lang/String;)V
    .locals 0

    .line 77481
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Ljava/lang/String;

    .line 77482
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A03()V

    .line 77483
    return-void
.end method

.method public final A0D(Z)V
    .locals 2

    .line 77484
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/b6;->A08:Z

    .line 77485
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A08:Z

    if-eqz v0, :cond_0

    .line 77486
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77487
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b6;->invalidateSelf()V

    .line 77488
    return-void

    .line 77489
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final A0E()Z
    .locals 1

    .line 77490
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A08:Z

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 77491
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/b6;->A08:Z

    if-nez v1, :cond_0

    .line 77492
    return-void

    .line 77493
    :cond_0
    move-object/from16 v3, p1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 77494
    .local v8, "canvasWidth":I
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 77495
    .local v9, "canvasHeight":I
    int-to-float v6, v2

    int-to-float v7, v1

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/b6;->A09:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 77496
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/b6;->A05:Ljava/lang/String;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Landroid/text/TextPaint;

    iget v13, v0, Lcom/facebook/ads/redexgen/X/b6;->A02:I

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 77497
    .local v10, "textLayout":Landroid/text/StaticLayout;
    int-to-float v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 77498
    .local v11, "canvasMiddleX":F
    int-to-float v7, v1

    div-float/2addr v7, v9

    .line 77499
    .local v12, "canvasMiddleY":F
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v6, v4

    div-float/2addr v6, v9

    .line 77500
    .local v13, "textMiddleX":F
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v5, v4

    div-float/2addr v5, v9

    .line 77501
    .local v14, "textMiddleY":F
    sub-float v12, v8, v6

    const/high16 v4, 0x42200000    # 40.0f

    sub-float/2addr v12, v4

    sub-float v13, v7, v5

    sub-float/2addr v13, v4

    add-float v14, v8, v6

    add-float/2addr v14, v4

    add-float v15, v7, v5

    add-float/2addr v15, v4

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/b6;->A0B:Landroid/graphics/Paint;

    move-object v11, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 77502
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 77503
    sub-float/2addr v8, v6

    sub-float/2addr v7, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77504
    invoke-virtual {v10, v3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 77505
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 77506
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 77507
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 77508
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Landroid/graphics/Path;

    int-to-float v4, v2

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77509
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Landroid/graphics/Path;

    int-to-float v4, v2

    int-to-float v2, v1

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77510
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Landroid/graphics/Path;

    int-to-float v1, v1

    invoke-virtual {v2, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77511
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77512
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Landroid/graphics/Path;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 77513
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 77514
    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 77515
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 77516
    return-void
.end method
