.class public final Lcom/facebook/ads/redexgen/X/9H;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:Lcom/facebook/ads/redexgen/X/qI;

.field public final A08:Z

.field public final A09:[Lcom/facebook/ads/redexgen/X/3k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 545
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rRI8qFzkORd3qFRWXYKq4VZ7aOLIEK5J"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8iww"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9Fk01UJleHjJYWOvUCOjDovINy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Tv7H9N81DtUxkF43CmkgrLrGhTLdsXix"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nBkKdwNSwO57UCO3SoKJGDMTXuqjBDbM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lOXwNuIjFjHmQAdnwK2N8OZR9kPb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lPFUJhDD1cvxNL1LCxfPRC2f3Pky1Kvn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6r"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9H;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9H;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/qI;IIIIIII[Lcom/facebook/ads/redexgen/X/3k;Z)V
    .locals 0

    .line 23896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23897
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    .line 23898
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9H;->A01:I

    .line 23899
    iput p3, p0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    .line 23900
    iput p4, p0, Lcom/facebook/ads/redexgen/X/9H;->A05:I

    .line 23901
    iput p5, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    .line 23902
    iput p6, p0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    .line 23903
    iput p7, p0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    .line 23904
    iput p8, p0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    .line 23905
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/9H;->A09:[Lcom/facebook/ads/redexgen/X/3k;

    .line 23906
    iput-boolean p10, p0, Lcom/facebook/ads/redexgen/X/9H;->A08:Z

    .line 23907
    return-void
.end method

.method public static A00()Landroid/media/AudioAttributes;
    .locals 2

    .line 23908
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 23909
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 23910
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 23911
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 23912
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 23913
    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/qQ;Z)Landroid/media/AudioAttributes;
    .locals 0

    .line 23914
    if-eqz p1, :cond_0

    .line 23915
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9H;->A00()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    .line 23916
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/qQ;->A01()Lcom/facebook/ads/redexgen/X/1z;

    move-result-object p0

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/qQ;I)Landroid/media/AudioTrack;
    .locals 8

    .line 23917
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A05:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A04(I)I

    move-result v1

    .line 23918
    .local v0, "streamType":I
    move v7, p2

    if-nez v7, :cond_0

    .line 23919
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object v0

    .line 23920
    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v0
.end method

.method private A03(ZLcom/facebook/ads/redexgen/X/qQ;I)Landroid/media/AudioTrack;
    .locals 4

    .line 23921
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    .line 23922
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9H;->A05(ZLcom/facebook/ads/redexgen/X/qQ;I)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0

    .line 23923
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    .line 23924
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9H;->A04(ZLcom/facebook/ads/redexgen/X/qQ;I)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0

    .line 23925
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/9H;->A02(Lcom/facebook/ads/redexgen/X/qQ;I)Landroid/media/AudioTrack;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9H;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9H;->A0B:[Ljava/lang/String;

    const-string v1, "QYyaIvQJX9uBRZ92y0XmWMx9BnIt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "OM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(ZLcom/facebook/ads/redexgen/X/qQ;I)Landroid/media/AudioTrack;
    .locals 9

    .line 23926
    new-instance v3, Landroid/media/AudioTrack;

    .line 23927
    invoke-static {p2, p1}, Lcom/facebook/ads/redexgen/X/9H;->A01(Lcom/facebook/ads/redexgen/X/qQ;Z)Landroid/media/AudioAttributes;

    move-result-object v4

    iget v2, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    .line 23928
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0E(III)Landroid/media/AudioFormat;

    move-result-object v5

    iget v6, p0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    const/4 v7, 0x1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 23929
    return-object v3
.end method

.method private A05(ZLcom/facebook/ads/redexgen/X/qQ;I)Landroid/media/AudioTrack;
    .locals 4

    .line 23930
    iget v2, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    .line 23931
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0E(III)Landroid/media/AudioFormat;

    move-result-object v2

    .line 23932
    .local v0, "audioFormat":Landroid/media/AudioFormat;
    invoke-static {p2, p1}, Lcom/facebook/ads/redexgen/X/9H;->A01(Lcom/facebook/ads/redexgen/X/qQ;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    .line 23933
    .local v1, "audioTrackAttributes":Landroid/media/AudioAttributes;
    new-instance v0, Landroid/media/AudioTrack$Builder;

    invoke-direct {v0}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 23934
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 23935
    invoke-virtual {v0, v2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 23936
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    .line 23937
    invoke-virtual {v1, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 23938
    invoke-virtual {v0, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    if-ne v0, v2, :cond_0

    .line 23939
    :goto_0
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 23940
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9H;->A0B:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 23941
    sget-object v2, Lcom/facebook/ads/redexgen/X/9H;->A0B:[Ljava/lang/String;

    const-string v1, "btQ69Jh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 23942
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9H;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x47

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9H;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x5t
        0x24t
        0x27t
        0x20t
        0x34t
        0x2dt
        0x35t
        0x0t
        0x34t
        0x25t
        0x28t
        0x2et
        0x12t
        0x28t
        0x2ft
        0x2at
        0x28t
        0x3ft
        0x23t
        0x26t
        0x2et
        0xbt
        0x3ft
        0x2et
        0x23t
        0x25t
        0x1et
        0x38t
        0x2bt
        0x29t
        0x21t
        0x70t
        0x6at
        0x39t
        0x3et
        0x2bt
        0x3et
        0x2ft
        0x77t
        0x6ft
        0x2et
        0x66t
        0x6at
        0x2bt
        0x3ft
        0x2et
        0x23t
        0x25t
        0x1et
        0x38t
        0x2bt
        0x29t
        0x21t
        0xbt
        0x26t
        0x26t
        0x25t
        0x29t
        0x2bt
        0x3et
        0x2ft
        0x2et
        0x64t
        0x2dt
        0x2ft
        0x3et
        0x62t
        0x63t
        0x77t
        0x6ft
        0x2et
    .end array-data
.end method


# virtual methods
.method public final A08(J)J
    .locals 4

    .line 23943
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A09(J)J
    .locals 4

    .line 23944
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A0A(ZLcom/facebook/ads/redexgen/X/qQ;I)Landroid/media/AudioTrack;
    .locals 14
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "D23918943: Monitor the audio track usage through audioTrackAllocated"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8t;
        }
    .end annotation

    .line 23945
    :try_start_0
    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/9H;->A03(ZLcom/facebook/ads/redexgen/X/qQ;I)Landroid/media/AudioTrack;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23946
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oM;->A0M()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 23947
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v6

    .line 23948
    .local v1, "state":I
    const/4 v5, 0x1

    if-ne v6, v5, :cond_0

    .line 23949
    return-object v1

    .line 23950
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 23951
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oM;->A0M()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 23952
    :catch_0
    move-exception v4

    .line 23953
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oM;->A0M()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v3, v0

    aput-object v1, v3, v5

    .line 23954
    const/16 v2, 0x10

    const/16 v1, 0x37

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9H;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 23955
    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9H;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23956
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/8t;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    .line 23957
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9H;->A0D()Z

    move-result v11

    .line 23958
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oM;->A0M()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/8t;-><init>(IIIILcom/facebook/ads/redexgen/X/qI;ZLjava/lang/Exception;I)V

    throw v5

    .line 23959
    .end local v0    # "audioTrack":Landroid/media/AudioTrack;
    .end local v1    # "state":I
    :catch_1
    move-exception v8

    goto :goto_1

    :catch_2
    move-exception v8

    .line 23960
    .local v8, "e":Ljava/lang/RuntimeException;
    :goto_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/8t;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    .line 23961
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9H;->A0D()Z

    move-result v7

    .line 23962
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oM;->A0M()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/8t;-><init>(IIIILcom/facebook/ads/redexgen/X/qI;ZLjava/lang/Exception;I)V

    throw v1
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/8r;
    .locals 8

    .line 23963
    new-instance v1, Lcom/facebook/ads/redexgen/X/8r;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/9H;->A08:Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    :goto_0
    iget v7, p0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/8r;-><init>(IIIZZI)V

    return-object v1

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public final A0C(I)Lcom/facebook/ads/redexgen/X/9H;
    .locals 11

    .line 23964
    new-instance v0, Lcom/facebook/ads/redexgen/X/9H;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/9H;->A01:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/9H;->A05:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/9H;->A09:[Lcom/facebook/ads/redexgen/X/3k;

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/9H;->A08:Z

    move v8, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ads/redexgen/X/9H;-><init>(Lcom/facebook/ads/redexgen/X/qI;IIIIIII[Lcom/facebook/ads/redexgen/X/3k;Z)V

    return-object v0
.end method

.method public final A0D()Z
    .locals 2

    .line 23965
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/9H;)Z
    .locals 2

    .line 23966
    iget v1, p1, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    if-ne v1, v0, :cond_0

    iget v1, p1, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    if-ne v1, v0, :cond_0

    iget v1, p1, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    if-ne v1, v0, :cond_0

    iget v1, p1, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    if-ne v1, v0, :cond_0

    iget v1, p1, Lcom/facebook/ads/redexgen/X/9H;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9H;->A05:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
