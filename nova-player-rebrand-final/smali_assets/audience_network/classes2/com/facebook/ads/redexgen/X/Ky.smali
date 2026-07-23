.class public final Lcom/facebook/ads/redexgen/X/Ky;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CsdBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/ts/H263Reader$CsdBuffer$State;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:[B

.field public A03:I

.field public A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 962
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gE3mKe15PNIaoXw7ttCb9BorVTDWlR1u"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LRWwjDWdMU47wKVJIcB7Dut7mBvG0frC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1lKwwAamcRIeYNpKQmj3IU07DDHuEgLY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "PqJP3Ph6GQQTo5wwFfkOi3DhrQyazUzj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oFDIgUdhkULxBDQwmRB0TUbB416shGBK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6jC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Mah1O8vNWMLKc07TjmSj8tDHohOggjyp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Z13UpOvZxGzeJ6F9B1HjNNGKJhd06uk1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ky;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ky;->A01()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ky;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 48906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48907
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A02:[B

    .line 48908
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ky;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v3, v0, -0x28

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ky;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ky;->A06:[Ljava/lang/String;

    const-string v1, "wQP1xK4QaPLi3BINLWGwqVwIKxpADjCS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "tYYHT9Q4g7LWTA4ojTcqgpuHTrSkfP7y"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ky;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x3ft
        -0x55t
        -0x51t
        -0x54t
        -0x35t
        -0x22t
        -0x26t
        -0x23t
        -0x22t
        -0x15t
        0x7dt
        -0x6at
        -0x73t
        -0x60t
        -0x68t
        -0x73t
        -0x75t
        -0x64t
        -0x73t
        -0x74t
        0x48t
        -0x65t
        -0x64t
        -0x77t
        -0x66t
        -0x64t
        0x48t
        -0x75t
        -0x69t
        -0x74t
        -0x73t
        0x48t
        -0x62t
        -0x77t
        -0x6ct
        -0x63t
        -0x73t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 48909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A04:Z

    .line 48910
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:I

    .line 48911
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A03:I

    .line 48912
    return-void
.end method

.method public final A03([BII)V
    .locals 4

    .line 48913
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A04:Z

    if-nez v0, :cond_0

    .line 48914
    return-void

    .line 48915
    :cond_0
    sub-int/2addr p3, p2

    .line 48916
    .local v0, "readLength":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ky;->A02:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ky;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ky;->A06:[Ljava/lang/String;

    const-string v1, "qvT0stT6nyeuoq7Xaws2DTrioTiQOWPH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "mzlXvCjE0xOVoENXvkyoTP7ZFwdNwR6s"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    array-length v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:I

    add-int/2addr v0, p3

    if-ge v1, v0, :cond_2

    .line 48917
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ky;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:I

    add-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A02:[B

    .line 48918
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ky;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:I

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48919
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:I

    .line 48920
    return-void
.end method

.method public final A04(II)Z
    .locals 8

    .line 48921
    iget v7, p0, Lcom/facebook/ads/redexgen/X/Ky;->A03:I

    const/16 v6, 0xb5

    const/16 v2, 0xa

    const/16 v1, 0x1b

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ky;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ky;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch v7, :pswitch_data_0

    .line 48922
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 48923
    :pswitch_0
    and-int/lit16 v1, p1, 0xf0

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    .line 48924
    invoke-static {v2, v5}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ky;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_0

    .line 48925
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ky;->A06:[Ljava/lang/String;

    const-string v1, "gGPh0dY5R1jiAvQEAzw3sN7yDmu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ky;->A02()V

    goto :goto_0

    .line 48926
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48927
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A01:I

    .line 48928
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A03:I

    .line 48929
    goto :goto_0

    .line 48930
    :pswitch_1
    const/16 v0, 0xb3

    if-eq p1, v0, :cond_2

    if-ne p1, v6, :cond_6

    .line 48931
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ky;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48932
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ky;->A06:[Ljava/lang/String;

    const-string v1, "cUZSIM6xSUtrWMgJjUWxh9bxB3Jsh26G"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ky;->A04:Z

    .line 48933
    return v4

    .line 48934
    :pswitch_2
    const/16 v0, 0x1f

    if-le p1, v0, :cond_4

    .line 48935
    invoke-static {v2, v5}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 48936
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ky;->A02()V

    goto :goto_0

    .line 48937
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A03:I

    .line 48938
    goto :goto_0

    .line 48939
    :pswitch_3
    if-eq p1, v6, :cond_5

    .line 48940
    invoke-static {v2, v5}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 48941
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ky;->A02()V

    goto :goto_0

    .line 48942
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A03:I

    .line 48943
    goto :goto_0

    .line 48944
    :pswitch_4
    const/16 v0, 0xb0

    if-ne p1, v0, :cond_6

    .line 48945
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Ky;->A03:I

    .line 48946
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ky;->A04:Z

    .line 48947
    :cond_6
    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ky;->A07:[B

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ky;->A07:[B

    array-length v0, v0

    invoke-virtual {p0, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Ky;->A03([BII)V

    .line 48948
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
