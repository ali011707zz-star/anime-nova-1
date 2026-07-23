.class public abstract Lcom/facebook/ads/redexgen/X/mZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Hw;


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3255
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "S2ZlE7yw63A48uwr9dQcAEYhUnBJ4Yn0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jzjCSZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gN1GhDNq1ONaTY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QUbV6eP7CXYOE5n4wRXfJJIvrecH4qk8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "luywBeNRakBazgpsmb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EdZTTUAmlRsHtXkkAmykmZcXBm9Gnzxa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aBS20hcvH8Cg0VDZoQaxMtYiCLoGsxgc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2I8VYTEH9eD6qwDjwvQqiLyn0yln2Tpt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mZ;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A0R(Lcom/facebook/ads/redexgen/X/9e;Ljava/nio/ByteBuffer;)Lcom/facebook/ads/androidx/media3/common/Metadata;
.end method

.method public final A5o(Lcom/facebook/ads/redexgen/X/9e;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 5

    .line 98882
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 98883
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/mZ;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/mZ;->A00:[Ljava/lang/String;

    const-string v1, "EqsX6PhC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 98884
    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 98885
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5u;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/mZ;->A0R(Lcom/facebook/ads/redexgen/X/9e;Ljava/nio/ByteBuffer;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    goto :goto_1

    .line 98886
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
