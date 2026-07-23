.class public final Lcom/facebook/ads/redexgen/X/1h;
.super Lcom/facebook/ads/redexgen/X/AQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/p1;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/net/DatagramSocket;

.field public A03:Ljava/net/InetAddress;

.field public A04:Ljava/net/MulticastSocket;

.field public A05:Z

.field public final A06:I

.field public final A07:Ljava/net/DatagramPacket;

.field public final A08:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7855
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1h;-><init>(I)V

    .line 7856
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 7857
    const/16 v0, 0x1f40

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/1h;-><init>(II)V

    .line 7858
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 7859
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Z)V

    .line 7860
    iput p2, p0, Lcom/facebook/ads/redexgen/X/1h;->A06:I

    .line 7861
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A08:[B

    .line 7862
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1h;->A08:[B

    const/4 v1, 0x0

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, v2, v1, p1}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A07:Ljava/net/DatagramPacket;

    .line 7863
    return-void
.end method


# virtual methods
.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 7864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/p1;
        }
    .end annotation

    .line 7865
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A01:Landroid/net/Uri;

    .line 7866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7867
    .local v0, "host":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 7868
    .local v1, "port":I
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AQ;->A0G(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 7869
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A03:Ljava/net/InetAddress;

    .line 7870
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1h;->A03:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 7871
    .local v2, "socketAddress":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1h;->A03:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7872
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/1h;->A04:Ljava/net/MulticastSocket;

    .line 7873
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1h;->A04:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A03:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 7874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A04:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A02:Ljava/net/DatagramSocket;

    .line 7875
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1h;->A02:Ljava/net/DatagramSocket;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A06:I

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    goto :goto_1

    .line 7876
    :cond_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/1h;->A02:Ljava/net/DatagramSocket;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7877
    .end local v2    # "socketAddress":Ljava/net/InetSocketAddress;
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A05:Z

    .line 7878
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AQ;->A0H(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 7879
    const-wide/16 v0, -0x1

    return-wide v0

    .line 7880
    :catch_0
    move-exception v2

    .line 7881
    .local v2, "e":Ljava/io/IOException;
    const/16 v1, 0x7d1

    new-instance v0, Lcom/facebook/ads/redexgen/X/p1;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/p1;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 7882
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 7883
    .local v2, "e":Ljava/lang/SecurityException;
    const/16 v1, 0x7d6

    new-instance v0, Lcom/facebook/ads/redexgen/X/p1;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/p1;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final close()V
    .locals 3

    .line 7884
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1h;->A01:Landroid/net/Uri;

    .line 7885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A04:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    .line 7886
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1h;->A04:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A03:Ljava/net/InetAddress;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7887
    :catch_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1h;->A04:Ljava/net/MulticastSocket;

    .line 7888
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A02:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 7889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A02:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 7890
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1h;->A02:Ljava/net/DatagramSocket;

    .line 7891
    :cond_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1h;->A03:Ljava/net/InetAddress;

    .line 7892
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1h;->A00:I

    .line 7893
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A05:Z

    if-eqz v0, :cond_2

    .line 7894
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1h;->A05:Z

    .line 7895
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AQ;->A0E()V

    .line 7896
    :cond_2
    return-void
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/p1;
        }
    .end annotation

    .line 7897
    if-nez p3, :cond_0

    .line 7898
    const/4 v0, 0x0

    return v0

    .line 7899
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A00:I

    if-nez v0, :cond_1

    .line 7900
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A02:Ljava/net/DatagramSocket;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/DatagramSocket;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A07:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7901
    :catch_0
    move-exception v2

    .line 7902
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, 0x7d1

    new-instance v0, Lcom/facebook/ads/redexgen/X/p1;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/p1;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 7903
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 7904
    .local v0, "e":Ljava/net/SocketTimeoutException;
    const/16 v1, 0x7d2

    new-instance v0, Lcom/facebook/ads/redexgen/X/p1;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/p1;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 7905
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A07:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A00:I

    .line 7906
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/AQ;->A0F(I)V

    .line 7907
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A07:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A00:I

    sub-int/2addr v2, v0

    .line 7908
    .local v0, "packetOffset":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A00:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7909
    .local v1, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A08:[B

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7910
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A00:I

    .line 7911
    return v1
.end method
