.class public final Lcom/facebook/ads/redexgen/X/nt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DT;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClippingSampleStream"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/DT;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/9v;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3311
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SXf2ikyU7x67I20o8i24dVpGUFSBqQTw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mkUiuiIj8yhWc2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZVpzrzkkS3TCIC8ssuB1q665Cly"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AyVvw5Y1t2x"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iglXNLTRJoy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iTKB7JlXxZgW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zcduVvETVwMCfQslxyZfhoZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8SZ4gfyzqyWZuyWUMuDO3PJ5JnvEF7yK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9v;Lcom/facebook/ads/redexgen/X/DT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 101701
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nt;->A02:Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101702
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nt;->A01:Lcom/facebook/ads/redexgen/X/DT;

    .line 101703
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 101704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A00:Z

    .line 101705
    return-void
.end method

.method public final AAe()Z
    .locals 4

    .line 101706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A02:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9v;->A03()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A01:Lcom/facebook/ads/redexgen/X/DT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DT;->AAe()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    const-string v1, "tfusTrbeCFgw"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "N1qkw3c8e5Hqf14VA9IMw1Y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ACR()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A01:Lcom/facebook/ads/redexgen/X/DT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DT;->ACR()V

    .line 101708
    return-void
.end method

.method public final AHP(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;I)I
    .locals 12

    .line 101709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A02:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9v;->A03()Z

    move-result v0

    const/4 v8, -0x3

    if-eqz v0, :cond_0

    .line 101710
    return v8

    .line 101711
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A00:Z

    const/4 v5, 0x4

    const/4 v4, -0x4

    if-eqz v0, :cond_1

    .line 101712
    invoke-virtual {p2, v5}, Lcom/facebook/ads/redexgen/X/5u;->A02(I)V

    .line 101713
    return v4

    .line 101714
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A01:Lcom/facebook/ads/redexgen/X/DT;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DT;->AHP(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;I)I

    move-result v6

    .line 101715
    .local v0, "result":I
    const/4 v7, -0x5

    const-wide/high16 v10, -0x8000000000000000L

    if-ne v6, v7, :cond_8

    .line 101716
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6z;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    const-string v1, "CgcnacS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    check-cast v6, Lcom/facebook/ads/redexgen/X/qI;

    .line 101717
    .local v1, "format":Lcom/facebook/ads/redexgen/X/qI;
    iget v0, v6, Lcom/facebook/ads/redexgen/X/qI;->A08:I

    if-nez v0, :cond_2

    iget v0, v6, Lcom/facebook/ads/redexgen/X/qI;->A09:I

    if-eqz v0, :cond_3

    .line 101718
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A02:Lcom/facebook/ads/redexgen/X/9v;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    const-string v1, "GNrNzPSs5rG"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "BRLad8Ppi7x"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    cmp-long v0, v2, v8

    if-eqz v0, :cond_6

    :goto_0
    const/4 v3, 0x0

    .line 101719
    .local v2, "encoderDelay":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A02:Lcom/facebook/ads/redexgen/X/9v;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v2, v0, v10

    if-eqz v2, :cond_4

    .line 101720
    .local v3, "encoderPadding":I
    :goto_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/qI;->A07()Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 101721
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2p;->A0d(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 101722
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A0e(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 101723
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/6z;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 101724
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :cond_3
    return v7

    .line 101725
    :cond_4
    iget v5, v6, Lcom/facebook/ads/redexgen/X/qI;->A09:I

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    const-string v1, "EEmKLcyNYLT06pocayZ2GsCLcCuyLxXc"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "iurrvyyHueo7iqPuT2paMo28xJltVQ5w"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    cmp-long v0, v2, v8

    if-eqz v0, :cond_6

    goto :goto_0

    .line 101726
    :cond_6
    iget v3, v6, Lcom/facebook/ads/redexgen/X/qI;->A08:I

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 101727
    .end local v1    # "format":Lcom/facebook/ads/redexgen/X/qI;
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A02:Lcom/facebook/ads/redexgen/X/9v;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v2, v0, v10

    if-eqz v2, :cond_c

    if-ne v6, v4, :cond_9

    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A02:Lcom/facebook/ads/redexgen/X/9v;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v7, v2, v0

    if-gez v7, :cond_a

    :cond_9
    if-ne v6, v8, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A02:Lcom/facebook/ads/redexgen/X/9v;

    .line 101728
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9v;->A78()J

    move-result-wide v1

    cmp-long v0, v1, v10

    if-nez v0, :cond_c

    iget-boolean v3, p2, Lcom/facebook/ads/redexgen/X/p0;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    const-string v1, "1nwlHryK5EDeU2ZU0H4BcQJbxB1i4Ihb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "uJ2uSAytr2SiAHwLxUdt9xnwmqCI2wHf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_c

    .line 101729
    :cond_a
    :goto_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/p0;->A0A()V

    .line 101730
    invoke-virtual {p2, v5}, Lcom/facebook/ads/redexgen/X/5u;->A02(I)V

    .line 101731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A00:Z

    .line 101732
    return v4

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/nt;->A03:[Ljava/lang/String;

    const-string v1, "inKi0NPX9S85"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "FN6Cq4NmwdrKNoi6ofH3HqR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_c

    goto :goto_3

    .line 101733
    :cond_c
    return v6
.end method

.method public final AK2(J)I
    .locals 1

    .line 101734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A02:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9v;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101735
    const/4 v0, -0x3

    return v0

    .line 101736
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nt;->A01:Lcom/facebook/ads/redexgen/X/DT;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DT;->AK2(J)I

    move-result v0

    return v0
.end method
