.class public final Lcom/facebook/ads/redexgen/X/3o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/pT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:F

.field public A05:F

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:Landroid/graphics/Bitmap;

.field public A0D:Landroid/text/Layout$Alignment;

.field public A0E:Landroid/text/Layout$Alignment;

.field public A0F:Ljava/lang/CharSequence;

.field public A0G:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0F:Ljava/lang/CharSequence;

    .line 10860
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0C:Landroid/graphics/Bitmap;

    .line 10861
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0E:Landroid/text/Layout$Alignment;

    .line 10862
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0D:Landroid/text/Layout$Alignment;

    .line 10863
    const v0, -0x800001

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A01:F

    .line 10864
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3o;->A07:I

    .line 10865
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3o;->A06:I

    .line 10866
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A02:F

    .line 10867
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3o;->A08:I

    .line 10868
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3o;->A09:I

    .line 10869
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A05:F

    .line 10870
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A04:F

    .line 10871
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A00:F

    .line 10872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0G:Z

    .line 10873
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0B:I

    .line 10874
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3o;->A0A:I

    .line 10875
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pT;)V
    .locals 1

    .line 10876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10877
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A0F:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0F:Ljava/lang/CharSequence;

    .line 10878
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A0C:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0C:Landroid/graphics/Bitmap;

    .line 10879
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A0E:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0E:Landroid/text/Layout$Alignment;

    .line 10880
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A0D:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0D:Landroid/text/Layout$Alignment;

    .line 10881
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A01:F

    .line 10882
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A07:I

    .line 10883
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A06:I

    .line 10884
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A02:F

    .line 10885
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A08:I

    .line 10886
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A09:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A09:I

    .line 10887
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A05:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A05:F

    .line 10888
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A04:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A04:F

    .line 10889
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A00:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A00:F

    .line 10890
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A0G:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0G:Z

    .line 10891
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A0B:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0B:I

    .line 10892
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A0A:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0A:I

    .line 10893
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pT;->A03:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A03:F

    .line 10894
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/pT;Lcom/facebook/ads/redexgen/X/3m;)V
    .locals 0

    .line 10895
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3o;-><init>(Lcom/facebook/ads/redexgen/X/pT;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 10896
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A06:I

    return v0
.end method

.method public final A01()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 10897
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A08:I

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/3o;
    .locals 1

    .line 10898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0G:Z

    .line 10899
    return-object p0
.end method

.method public final A03(F)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10900
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A00:F

    .line 10901
    return-object p0
.end method

.method public final A04(F)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10902
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A02:F

    .line 10903
    return-object p0
.end method

.method public final A05(F)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10904
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A03:F

    .line 10905
    return-object p0
.end method

.method public final A06(F)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10906
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A04:F

    .line 10907
    return-object p0
.end method

.method public final A07(FI)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10908
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A01:F

    .line 10909
    iput p2, p0, Lcom/facebook/ads/redexgen/X/3o;->A07:I

    .line 10910
    return-object p0
.end method

.method public final A08(FI)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10911
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A05:F

    .line 10912
    iput p2, p0, Lcom/facebook/ads/redexgen/X/3o;->A09:I

    .line 10913
    return-object p0
.end method

.method public final A09(I)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10914
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A06:I

    .line 10915
    return-object p0
.end method

.method public final A0A(I)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10916
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A08:I

    .line 10917
    return-object p0
.end method

.method public final A0B(I)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10918
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A0A:I

    .line 10919
    return-object p0
.end method

.method public final A0C(I)Lcom/facebook/ads/redexgen/X/3o;
    .locals 1

    .line 10920
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A0B:I

    .line 10921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0G:Z

    .line 10922
    return-object p0
.end method

.method public final A0D(Landroid/graphics/Bitmap;)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10923
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A0C:Landroid/graphics/Bitmap;

    .line 10924
    return-object p0
.end method

.method public final A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10925
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A0D:Landroid/text/Layout$Alignment;

    .line 10926
    return-object p0
.end method

.method public final A0F(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10927
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A0E:Landroid/text/Layout$Alignment;

    .line 10928
    return-object p0
.end method

.method public final A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3o;
    .locals 0

    .line 10929
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A0F:Ljava/lang/CharSequence;

    .line 10930
    return-object p0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/pT;
    .locals 35

    .line 10931
    move-object/from16 v0, p0

    new-instance v16, Lcom/facebook/ads/redexgen/X/pT;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/3o;->A0F:Ljava/lang/CharSequence;

    move-object/from16 v17, v1

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/3o;->A0E:Landroid/text/Layout$Alignment;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/3o;->A0D:Landroid/text/Layout$Alignment;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/3o;->A0C:Landroid/graphics/Bitmap;

    iget v12, v0, Lcom/facebook/ads/redexgen/X/3o;->A01:F

    iget v11, v0, Lcom/facebook/ads/redexgen/X/3o;->A07:I

    iget v10, v0, Lcom/facebook/ads/redexgen/X/3o;->A06:I

    iget v9, v0, Lcom/facebook/ads/redexgen/X/3o;->A02:F

    iget v8, v0, Lcom/facebook/ads/redexgen/X/3o;->A08:I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/3o;->A09:I

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3o;->A05:F

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3o;->A04:F

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3o;->A00:F

    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3o;->A0G:Z

    move-object/from16 v16, v16

    iget v2, v0, Lcom/facebook/ads/redexgen/X/3o;->A0B:I

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3o;->A0A:I

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3o;->A03:F

    const/16 v34, 0x0

    move/from16 v30, v3

    move/from16 v31, v2

    move/from16 v32, v1

    move/from16 v33, v0

    move/from16 v28, v5

    move/from16 v29, v4

    move/from16 v26, v7

    move/from16 v27, v6

    move/from16 v24, v9

    move/from16 v25, v8

    move/from16 v22, v11

    move/from16 v23, v10

    move-object/from16 v20, v13

    move/from16 v21, v12

    move-object/from16 v18, v15

    move-object/from16 v19, v14

    move-object/from16 v17, v17

    invoke-direct/range {v16 .. v34}, Lcom/facebook/ads/redexgen/X/pT;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/facebook/ads/redexgen/X/3m;)V

    return-object v16
.end method

.method public final A0I()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 10932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A0F:Ljava/lang/CharSequence;

    return-object v0
.end method
