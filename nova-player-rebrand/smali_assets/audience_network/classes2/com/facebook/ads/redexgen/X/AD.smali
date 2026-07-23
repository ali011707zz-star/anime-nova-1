.class public final Lcom/facebook/ads/redexgen/X/AD;
.super Lcom/facebook/ads/redexgen/X/pz;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/ExoPlaybackException$Type;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static final A08:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/AD;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/lang/String;

.field public static final A0A:Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;


# instance fields
.field public final A00:Z

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/qI;

.field public final A05:Lcom/facebook/ads/redexgen/X/3C;

.field public final A06:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 609
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AD;->A07()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ot;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ot;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/AD;->A08:Lcom/facebook/ads/redexgen/X/23;

    .line 610
    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AD;->A0E:Ljava/lang/String;

    .line 611
    const/16 v0, 0x3ea

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AD;->A0D:Ljava/lang/String;

    .line 612
    const/16 v0, 0x3eb

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AD;->A0C:Ljava/lang/String;

    .line 613
    const/16 v0, 0x3ec

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AD;->A0A:Ljava/lang/String;

    .line 614
    const/16 v0, 0x3ed

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AD;->A0B:Ljava/lang/String;

    .line 615
    const/16 v0, 0x3ee

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AD;->A09:Ljava/lang/String;

    .line 616
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    .line 28759
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p3

    move-object v2, p2

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/AD;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/facebook/ads/redexgen/X/qI;IZ)V

    .line 28760
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/facebook/ads/redexgen/X/qI;IZ)V
    .locals 16

    .line 28761
    move/from16 v8, p8

    move-object/from16 v7, p7

    move/from16 v6, p6

    move-object/from16 v5, p5

    move-object/from16 v11, p3

    move-object/from16 v2, p2

    move/from16 v4, p1

    move v9, v4

    move-object v10, v2

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move v15, v8

    invoke-static/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/AD;->A06(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/qI;I)Ljava/lang/String;

    move-result-object v1

    .line 28762
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 28763
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v12, p9

    move/from16 v3, p4

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/redexgen/X/AD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/facebook/ads/redexgen/X/qI;ILcom/facebook/ads/redexgen/X/3C;JZ)V

    .line 28764
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 28765
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/pz;-><init>(Landroid/os/Bundle;)V

    .line 28766
    sget-object v1, Lcom/facebook/ads/redexgen/X/AD;->A0E:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A03:I

    .line 28767
    sget-object v0, Lcom/facebook/ads/redexgen/X/AD;->A0D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A06:Ljava/lang/String;

    .line 28768
    sget-object v1, Lcom/facebook/ads/redexgen/X/AD;->A0C:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A02:I

    .line 28769
    sget-object v0, Lcom/facebook/ads/redexgen/X/AD;->A0A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 28770
    .local v0, "rendererFormatBundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A04:Lcom/facebook/ads/redexgen/X/qI;

    .line 28771
    sget-object v1, Lcom/facebook/ads/redexgen/X/AD;->A0B:Ljava/lang/String;

    .line 28772
    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A01:I

    .line 28773
    sget-object v1, Lcom/facebook/ads/redexgen/X/AD;->A09:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A00:Z

    .line 28774
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AD;->A05:Lcom/facebook/ads/redexgen/X/3C;

    .line 28775
    return-void

    .line 28776
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/qI;->A0b:Lcom/facebook/ads/redexgen/X/23;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qI;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/facebook/ads/redexgen/X/qI;ILcom/facebook/ads/redexgen/X/3C;JZ)V
    .locals 9

    .line 28777
    move-object v2, p0

    move-object v3, p0

    move-wide/from16 v7, p10

    move v6, p3

    move-object v5, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/pz;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    .line 28778
    const/4 v1, 0x0

    const/4 v0, 0x1

    move/from16 v3, p12

    if-eqz v3, :cond_0

    if-ne p4, v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 28779
    if-nez v5, :cond_1

    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 28780
    iput p4, v2, Lcom/facebook/ads/redexgen/X/AD;->A03:I

    .line 28781
    iput-object p5, v2, Lcom/facebook/ads/redexgen/X/AD;->A06:Ljava/lang/String;

    .line 28782
    iput p6, v2, Lcom/facebook/ads/redexgen/X/AD;->A02:I

    .line 28783
    move-object/from16 v0, p7

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AD;->A04:Lcom/facebook/ads/redexgen/X/qI;

    .line 28784
    move/from16 v0, p8

    iput v0, v2, Lcom/facebook/ads/redexgen/X/AD;->A01:I

    .line 28785
    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AD;->A05:Lcom/facebook/ads/redexgen/X/3C;

    .line 28786
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/AD;->A00:Z

    .line 28787
    return-void

    .line 28788
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/AD;
    .locals 1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AD;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static A01(Ljava/io/IOException;I)Lcom/facebook/ads/redexgen/X/AD;
    .locals 2

    .line 28789
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/AD;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/AD;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28790
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AD;->A03(Ljava/lang/RuntimeException;I)Lcom/facebook/ads/redexgen/X/AD;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Ljava/lang/RuntimeException;I)Lcom/facebook/ads/redexgen/X/AD;
    .locals 2

    .line 28791
    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/AD;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static A04(Ljava/lang/Throwable;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/qI;IZI)Lcom/facebook/ads/redexgen/X/AD;
    .locals 10

    .line 28792
    move v8, p4

    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    .line 28793
    move-object v7, p3

    if-nez v7, :cond_0

    const/4 v8, 0x4

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    move/from16 v4, p6

    move v9, p5

    move v6, p2

    move-object v5, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/AD;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/facebook/ads/redexgen/X/qI;IZ)V

    .line 28794
    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AD;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/qI;I)Ljava/lang/String;
    .locals 2
    .param p0    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            type = {
                "NEW_METHOD_ARGS"
            }
            value = "Throwable cause - linked with Error reporting"
        .end annotation
    .end param

    .line 28795
    if-nez p2, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 28796
    .local v0, "message":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 28797
    return-object v0

    .line 28798
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_0

    .line 28799
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 28800
    :pswitch_0
    const/16 p0, 0x44

    const/16 v1, 0x18

    const/16 v0, 0x3c

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/AD;->A05(III)Ljava/lang/String;

    move-result-object v1

    .line 28801
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 28802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p0, 0x2a

    const/4 v1, 0x2

    const/16 v0, 0x74

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/AD;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28803
    :cond_3
    return-object v1

    .line 28804
    :pswitch_1
    const/16 p0, 0x2c

    const/16 v1, 0xc

    const/16 v0, 0x44

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/AD;->A05(III)Ljava/lang/String;

    move-result-object v1

    .line 28805
    goto :goto_1

    .line 28806
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p0, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x1b

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/AD;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p0, 0xe

    const/16 v1, 0x9

    const/16 v0, 0x44

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/AD;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p0, 0x17

    const/16 v1, 0x13

    const/16 v0, 0x72

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/AD;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28807
    invoke-static {p6}, Lcom/facebook/ads/redexgen/X/5C;->A0g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28808
    goto :goto_1

    .line 28809
    :pswitch_3
    const/16 p0, 0x38

    const/16 v1, 0xc

    const/16 v0, 0x3b

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/AD;->A05(III)Ljava/lang/String;

    move-result-object v1

    .line 28810
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x5c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AD;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x78t
        -0x43t
        -0x36t
        -0x36t
        -0x39t
        -0x36t
        -0x7ct
        0x78t
        -0x3ft
        -0x3at
        -0x44t
        -0x43t
        -0x30t
        -0x6bt
        -0x53t
        -0x5ft
        -0x19t
        -0x10t
        -0xdt
        -0x12t
        -0x1et
        -0xbt
        -0x42t
        -0x25t
        -0x31t
        0x15t
        0x1et
        0x21t
        0x1ct
        0x10t
        0x23t
        0xet
        0x22t
        0x24t
        0x1ft
        0x1ft
        0x1et
        0x21t
        0x23t
        0x14t
        0x13t
        -0x14t
        -0x15t
        -0x2ft
        -0x2dt
        -0x1at
        -0x12t
        -0x10t
        -0xbt
        -0x1at
        -0x5ft
        -0x1at
        -0xdt
        -0xdt
        -0x10t
        -0xdt
        -0x35t
        -0x19t
        -0x13t
        -0x16t
        -0x25t
        -0x23t
        -0x68t
        -0x23t
        -0x16t
        -0x16t
        -0x19t
        -0x16t
        -0x32t
        -0x19t
        -0x22t
        -0xft
        -0x17t
        -0x22t
        -0x24t
        -0x13t
        -0x22t
        -0x23t
        -0x67t
        -0x15t
        -0x12t
        -0x19t
        -0x13t
        -0x1et
        -0x1at
        -0x22t
        -0x67t
        -0x22t
        -0x15t
        -0x15t
        -0x18t
        -0x15t
    .end array-data
.end method
