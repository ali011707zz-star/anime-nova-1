.class public abstract Lcom/facebook/ads/redexgen/X/kH;
.super Lcom/facebook/ads/redexgen/X/Mt;
.source ""


# static fields
.field public static A04:Ljava/lang/String;

.field public static A05:Ljava/lang/String;

.field public static A06:Ljava/lang/String;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/N0;

.field public final A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3151
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yKsrGZvRhlHO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9EputwQvm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xy4ysuU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7AjoeEFyRFUmAcGguWz5skIE39kXLiT8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yw7hkrjnug4F5v8JlqxYlpspwNYrqeOP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YdvcKbM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Mv5W7ZjuxpjDlIvwBIaHg3eS9AlP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wZHnfIG7rJSoOb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kH;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kH;->A0E()V

    const/16 v2, 0x40

    const/4 v1, 0x7

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0D(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kH;->A04:Ljava/lang/String;

    .line 3152
    const/16 v2, 0x55

    const/16 v1, 0x18

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0D(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kH;->A05:Ljava/lang/String;

    .line 3153
    const/16 v2, 0x76

    const/16 v1, 0x10

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0D(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kH;->A06:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N0;Z)V
    .locals 7

    .line 89559
    const/4 v6, 0x0

    move-object v0, p0

    move v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/kH;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N0;ZZ)V

    .line 89560
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N0;ZZ)V
    .locals 2

    .line 89561
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Mt;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;)V

    .line 89562
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A00:I

    .line 89563
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/kH;->A02:Lcom/facebook/ads/redexgen/X/N0;

    .line 89564
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/kH;->A03:Z

    .line 89565
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/kH;->A01:Z

    .line 89566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A02:Lcom/facebook/ads/redexgen/X/N0;

    if-eqz v0, :cond_0

    .line 89567
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kH;->A02:Lcom/facebook/ads/redexgen/X/N0;

    new-instance v0, Lcom/facebook/ads/redexgen/X/kI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/kI;-><init>(Lcom/facebook/ads/redexgen/X/kH;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N0;->A07(Lcom/facebook/ads/redexgen/X/Ms;)V

    .line 89568
    :cond_0
    return-void
.end method

.method public static A0D(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0E()V
    .locals 4

    const/16 v0, 0x86

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/kH;->A08:[Ljava/lang/String;

    const-string v1, "E0qxoPtldo8saq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/kH;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x13t
        0x16t
        0x1ct
        0x14t
        0x5ft
        0x13t
        0x10t
        0x18t
        0x18t
        0x1at
        0x1bt
        0x18t
        0x17t
        0x1dt
        0xbt
        0x16t
        0x10t
        0x1dt
        0x57t
        0x10t
        0x17t
        0xdt
        0x1ct
        0x17t
        0xdt
        0x57t
        0x18t
        0x1at
        0xdt
        0x10t
        0x16t
        0x17t
        0x57t
        0x2ft
        0x30t
        0x3ct
        0x2et
        0x11t
        0x12t
        0x10t
        0x18t
        0x2ct
        0x7t
        0x1at
        0x1et
        0x16t
        0x23t
        0x2at
        0x2et
        0x39t
        0x2at
        0x10t
        0x3bt
        0x26t
        0x22t
        0x2at
        0x22t
        0x38t
        0x39t
        0x2et
        0x22t
        0x20t
        0x28t
        0x29t
        0x2ft
        0x39t
        0x39t
        0x3ft
        0x29t
        0x29t
        0x41t
        0x5at
        0x5dt
        0x42t
        0x51t
        0x46t
        0x47t
        0x55t
        0x58t
        0x6bt
        0x58t
        0x5dt
        0x5at
        0x5ft
        0x14t
        0x12t
        0x4t
        0x13t
        0x3et
        0x15t
        0x13t
        0x0t
        0x2t
        0xat
        0x4t
        0x13t
        0x3et
        0x8t
        0x12t
        0x3et
        0xft
        0xet
        0x15t
        0x3et
        0xft
        0x14t
        0xdt
        0xdt
        0x7t
        0x1t
        0x17t
        0x0t
        0x11t
        0x1et
        0x1bt
        0x11t
        0x19t
        0x6ft
        0x79t
        0x6ct
        0x7bt
        0x70t
        0x47t
        0x79t
        0x76t
        0x7ct
        0x47t
        0x7at
        0x6at
        0x77t
        0x6ft
        0x6bt
        0x7dt
    .end array-data
.end method


# virtual methods
.method public final A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 2

    .line 89569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A02:Lcom/facebook/ads/redexgen/X/N0;

    if-eqz v0, :cond_0

    .line 89570
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kH;->A02:Lcom/facebook/ads/redexgen/X/N0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N0;->A08(Ljava/lang/String;)V

    .line 89571
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bV;->A04(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89572
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A06:Lcom/facebook/ads/redexgen/X/Mq;

    return-object v0

    .line 89573
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/kH;->A0L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89574
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A06:Lcom/facebook/ads/redexgen/X/Mq;

    return-object v0

    .line 89575
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/kH;->A0H()Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0H()Lcom/facebook/ads/redexgen/X/Mq;
.end method

.method public final synthetic A0I()V
    .locals 4

    .line 89576
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A00:I

    .line 89577
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Mt;->A00:Lcom/facebook/ads/redexgen/X/Mr;

    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/kH;->A08:[Ljava/lang/String;

    const-string v1, "ZLZB3DtfqcSTIr4ga6zBSlI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 89578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A00:Lcom/facebook/ads/redexgen/X/Mr;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mr;->ACk()V

    .line 89579
    :cond_1
    return-void
.end method

.method public final A0J(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Mq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Mq;",
            ")V"
        }
    .end annotation

    .line 89580
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89581
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/87;

    if-eqz v0, :cond_4

    .line 89582
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A02:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/VA;->AC8(Ljava/lang/String;Ljava/util/Map;)V

    .line 89583
    :goto_0
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Mq;->A02(Lcom/facebook/ads/redexgen/X/Mq;)Z

    move-result v4

    .line 89584
    .local v0, "isError":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A02:Lcom/facebook/ads/redexgen/X/N0;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 89585
    .local v1, "userTrackerIsNotNull":Z
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89586
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89587
    .local v2, "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A04:Ljava/lang/String;

    xor-int/lit8 v0, v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89588
    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A05:Ljava/lang/String;

    .line 89589
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 89590
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89591
    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A06:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A01:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A02:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VA;->ABn(Ljava/lang/String;Ljava/util/Map;)V

    .line 89593
    .end local v2    # "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A02:Lcom/facebook/ads/redexgen/X/N0;

    if-eqz v0, :cond_2

    .line 89594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A02:Lcom/facebook/ads/redexgen/X/N0;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/N0;->A06(Lcom/facebook/ads/redexgen/X/Mq;)V

    .line 89595
    if-eqz v4, :cond_1

    .line 89596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A02:Lcom/facebook/ads/redexgen/X/N0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A05()V

    .line 89597
    .end local v0    # "isError":Z
    .end local v1    # "userTrackerIsNotNull":Z
    .end local v2
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/XI;->A04(Landroid/content/Context;Ljava/lang/String;)V

    .line 89598
    return-void

    .line 89599
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89600
    .local v2, "userReturnDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 89601
    const/16 v2, 0x2f

    const/16 v1, 0xa

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89602
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 89603
    const/16 v2, 0x26

    const/16 v1, 0x9

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89604
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A05:Lcom/facebook/ads/redexgen/X/Mq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mq;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x39

    const/4 v1, 0x7

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89605
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A02:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/VA;->AC9(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 89606
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 89607
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A02:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/VA;->ABM(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public final A0K(Landroid/net/Uri;)Z
    .locals 4

    .line 89608
    const/4 v1, 0x0

    .line 89609
    .local v0, "redirectedToApp":Z
    :try_start_0
    const/16 v3, 0x47

    const/16 v2, 0xe

    const/4 v0, 0x4

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89610
    .local v1, "universalLink":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89611
    const/16 v2, 0xc

    const/16 v1, 0x1a

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0D(III)Ljava/lang/String;

    move-result-object v0

    .line 89612
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 89613
    .local v2, "launchIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89614
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt v2, v0, :cond_0

    .line 89615
    const/16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89616
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Wu;->A0D(Lcom/facebook/ads/redexgen/X/gi;Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Ws; {:try_start_0 .. :try_end_0} :catch_0

    .line 89617
    .local v1, "e":Lcom/facebook/ads/redexgen/X/Ws;
    :catch_0
    const/4 v1, 0x0

    .line 89618
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/Ws;
    :cond_1
    :goto_0
    return v1
.end method

.method public final A0L(Ljava/lang/String;)Z
    .locals 3

    .line 89619
    if-eqz p1, :cond_0

    const/16 v2, 0x6d

    const/16 v1, 0x9

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A00:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/kH;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 89620
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0I(Landroid/content/Context;)I

    move-result v0

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    .line 89621
    :goto_0
    return v0

    .line 89622
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
