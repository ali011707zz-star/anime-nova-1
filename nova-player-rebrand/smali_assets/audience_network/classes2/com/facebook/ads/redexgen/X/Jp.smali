.class public final Lcom/facebook/ads/redexgen/X/Jp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueInfoBuilder"
.end annotation


# static fields
.field public static A0M:[B

.field public static A0N:[Ljava/lang/String;

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:[I

.field public static final A0S:[I

.field public static final A0T:[I

.field public static final A0U:[I

.field public static final A0V:[I

.field public static final A0W:[I

.field public static final A0X:[I

.field public static final A0Y:[Z


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:Landroid/text/SpannableStringBuilder;

.field public final A0L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 840
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Kv7ovND2cx6KZ8R5Ezu4hDmX6dp2iMsF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cMayWHospKRMpxKq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mql622251rYxqhMKViyNV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "P8t7Cej7Eu84XMsYCsqfV8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "67bBuM9FR4N3pZNg9PG0C391ASiInkRu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7F7KFi1R4GAbzTVO1b4Hjpai2dbfx6Jn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "z0mbdaejDP4Gp0uM4K5gZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ITsACGDJX7h4DVdWQgnQRCMTb7k"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jp;->A04()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/Jp;->A01(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jp;->A0P:I

    .line 841
    invoke-static {v1, v1, v1, v1}, Lcom/facebook/ads/redexgen/X/Jp;->A01(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    .line 842
    const/4 v0, 0x3

    invoke-static {v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A01(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jp;->A0Q:I

    .line 843
    const/4 v1, 0x7

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A0V:[I

    .line 844
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A0W:[I

    .line 845
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A0X:[I

    .line 846
    new-array v0, v1, [Z

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A0Y:[Z

    .line 847
    sget v2, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    sget v3, Lcom/facebook/ads/redexgen/X/Jp;->A0Q:I

    sget v4, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    sget v5, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    sget v6, Lcom/facebook/ads/redexgen/X/Jp;->A0Q:I

    sget v7, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    sget v8, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    filled-new-array/range {v2 .. v8}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A0U:[I

    .line 848
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A0T:[I

    .line 849
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A0S:[I

    .line 850
    sget v0, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    sget v1, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    sget v2, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    sget v3, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    sget v4, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    sget v5, Lcom/facebook/ads/redexgen/X/Jp;->A0Q:I

    sget v6, Lcom/facebook/ads/redexgen/X/Jp;->A0Q:I

    filled-new-array/range {v0 .. v6}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A0R:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 44173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    .line 44175
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    .line 44176
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jp;->A08()V

    .line 44177
    return-void
.end method

.method public static A00(III)I
    .locals 1

    .line 44178
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A01(IIII)I

    move-result v0

    return v0
.end method

.method public static A01(IIII)I
    .locals 5

    .line 44179
    const/4 v4, 0x0

    const/4 v0, 0x4

    invoke-static {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/3y;->A00(III)I

    .line 44180
    invoke-static {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/3y;->A00(III)I

    .line 44181
    invoke-static {p2, v4, v0}, Lcom/facebook/ads/redexgen/X/3y;->A00(III)I

    .line 44182
    invoke-static {p3, v4, v0}, Lcom/facebook/ads/redexgen/X/3y;->A00(III)I

    .line 44183
    packed-switch p3, :pswitch_data_0

    .line 44184
    const/16 v3, 0xff

    .line 44185
    .local v1, "alpha":I
    :goto_0
    const/4 v2, 0x1

    if-le p0, v2, :cond_2

    const/16 v1, 0xff

    :goto_1
    if-le p1, v2, :cond_1

    const/16 v0, 0xff

    :goto_2
    if-le p2, v2, :cond_0

    const/16 v4, 0xff

    :cond_0
    invoke-static {v3, v1, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 44186
    .end local v1    # "alpha":I
    :pswitch_0
    const/4 v3, 0x0

    .line 44187
    .restart local v1    # "alpha":I
    goto :goto_0

    .line 44188
    .end local v1    # "alpha":I
    :pswitch_1
    const/16 v3, 0x7f

    .line 44189
    .restart local v1    # "alpha":I
    goto :goto_0

    .line 44190
    .end local v1    # "alpha":I
    :pswitch_2
    const/16 v3, 0xff

    .line 44191
    .restart local v1    # "alpha":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final A02()Landroid/text/SpannableString;
    .locals 6

    .line 44192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 44193
    .local v0, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 44194
    .local v1, "length":I
    if-lez v4, :cond_3

    .line 44195
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A06:I

    const/16 v2, 0x21

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 44196
    const/4 v0, 0x2

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A06:I

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44197
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0C:I

    if-eq v0, v5, :cond_1

    .line 44198
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0C:I

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44199
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A04:I

    if-eq v0, v5, :cond_2

    .line 44200
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A03:I

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A04:I

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44201
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A02:I

    if-eq v0, v5, :cond_3

    .line 44202
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A01:I

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A02:I

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44203
    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const-string v1, "mD7XUZguBvkCVVbcE7WnAk49VpUUHB7Z"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "aw72WUKXBCYvXfs7FlFT1zjutV7r8SLl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x58

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A0M:[B

    return-void

    :array_0
    .array-data 1
        0x4ct
        0x77t
        0x7ct
        0x61t
        0x69t
        0x7ct
        0x7at
        0x6dt
        0x7ct
        0x7dt
        0x39t
        0x73t
        0x6ct
        0x6at
        0x6dt
        0x70t
        0x7ft
        0x70t
        0x7at
        0x78t
        0x6dt
        0x70t
        0x76t
        0x77t
        0x39t
        0x6ft
        0x78t
        0x75t
        0x6ct
        0x7ct
        0x23t
        0x39t
    .end array-data
.end method


# virtual methods
.method public final A05()Lcom/facebook/ads/redexgen/X/Jo;
    .locals 16

    .line 44204
    move-object/from16 v3, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Jp;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44205
    const/4 v0, 0x0

    return-object v0

    .line 44206
    :cond_0
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 44207
    .local v1, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 44208
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 44209
    const/16 v0, 0xa

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 44210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44211
    .end local v2    # "i":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Jp;->A02()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 44212
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A07:I

    packed-switch v0, :pswitch_data_0

    .line 44213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x20

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A07:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44214
    :pswitch_0
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 44215
    .local v2, "alignment":Landroid/text/Layout$Alignment;
    goto :goto_1

    .line 44216
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 44217
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const-string v1, "AjZAJROepXKxJH0I"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "I7pWWFcr0TB3DXF69vLyyG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto :goto_1

    .line 44218
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 44219
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    .local v14, "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A0H:Z

    if-eqz v0, :cond_a

    .line 44220
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A05:I

    int-to-float v10, v0

    const/high16 v2, 0x42c60000    # 99.0f

    div-float/2addr v10, v2

    .line 44221
    .local v2, "position":F
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A0D:I

    int-to-float v1, v0

    div-float/2addr v1, v2

    .line 44222
    .local v4, "line":F
    .restart local v4    # "line":F
    :goto_2
    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v10, v7

    const v0, 0x3d4ccccd    # 0.05f

    add-float/2addr v10, v0

    .line 44223
    .end local v2    # "position":F
    .local v15, "position":F
    mul-float/2addr v7, v1

    add-float/2addr v7, v0

    .line 44224
    .end local v4    # "line":F
    .local p0, "line":F
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A00:I

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 44225
    const/4 v9, 0x0

    .line 44226
    .local v2, "verticalAnchorType":I
    .local p1, "verticalAnchorType":I
    :goto_3
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A00:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_4

    .line 44227
    const/4 v11, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 44228
    .local p2, "horizontalAnchorType":I
    :goto_4
    iget v1, v3, Lcom/facebook/ads/redexgen/X/Jp;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    if-eq v1, v0, :cond_2

    const/4 v13, 0x1

    .line 44229
    .local v11, "windowColorSet":Z
    :goto_5
    new-instance v4, Lcom/facebook/ads/redexgen/X/Jo;

    iget v14, v3, Lcom/facebook/ads/redexgen/X/Jp;->A0E:I

    iget v15, v3, Lcom/facebook/ads/redexgen/X/Jp;->A09:I

    const/4 v8, 0x0

    const v12, -0x800001

    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/Jo;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v4

    .line 44230
    :cond_2
    const/4 v13, 0x0

    goto :goto_5

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const-string v1, "Fa7UQvLnbqmxFbTcY1UUAPqIv3qiyseY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Rn7fSkhECSao3Se51ChHFeFA96BWKZhu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    .local v2, "horizontalAnchorType":I
    goto :goto_4

    .line 44231
    .end local v2    # "horizontalAnchorType":I
    :cond_4
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A00:I

    rem-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_7

    .line 44232
    const/4 v11, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const-string v1, "EFcN8K0y7Hbu8UhXppleE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "H3lBazkydsESAKcSyiLhJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .restart local v2    # "horizontalAnchorType":I
    goto :goto_4

    .line 44233
    .end local v2    # "horizontalAnchorType":I
    :cond_7
    const/4 v11, 0x2

    goto :goto_4

    .line 44234
    .end local v2
    :cond_8
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A00:I

    div-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_9

    .line 44235
    const/4 v9, 0x1

    .restart local v2    # "horizontalAnchorType":I
    goto :goto_3

    .line 44236
    .end local v2    # "horizontalAnchorType":I
    :cond_9
    const/4 v9, 0x2

    goto :goto_3

    .line 44237
    .end local v2
    .end local v4
    :cond_a
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A05:I

    int-to-float v10, v0

    const/high16 v0, 0x43510000    # 209.0f

    div-float/2addr v10, v0

    .line 44238
    .restart local v2    # "horizontalAnchorType":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jp;->A0D:I

    int-to-float v1, v0

    const/high16 v0, 0x42940000    # 74.0f

    div-float/2addr v1, v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final A06()V
    .locals 6

    .line 44239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 44240
    .local v0, "length":I
    if-lez v5, :cond_0

    .line 44241
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v5, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const-string v1, "mr7H3cYDyzqjeYfUxSkedoxDGLReqWZH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "WB7R3soSd1e4KWjeo1umNLF0CWboeFMb"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v3, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 44242
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07()V
    .locals 1

    .line 44243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 44245
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A06:I

    .line 44246
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0C:I

    .line 44247
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A04:I

    .line 44248
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A02:I

    .line 44249
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0A:I

    .line 44250
    return-void
.end method

.method public final A08()V
    .locals 2

    .line 44251
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jp;->A07()V

    .line 44252
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0G:Z

    .line 44253
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0J:Z

    .line 44254
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A09:I

    .line 44255
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0H:Z

    .line 44256
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0D:I

    .line 44257
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A05:I

    .line 44258
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A00:I

    .line 44259
    const/16 v0, 0xf

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0B:I

    .line 44260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0I:Z

    .line 44261
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A07:I

    .line 44262
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0F:I

    .line 44263
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A08:I

    .line 44264
    sget v0, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0E:I

    .line 44265
    sget v0, Lcom/facebook/ads/redexgen/X/Jp;->A0P:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A03:I

    .line 44266
    sget v0, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A01:I

    .line 44267
    return-void
.end method

.method public final A09(C)V
    .locals 6

    .line 44268
    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    .line 44269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jp;->A02()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 44271
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A06:I

    const/4 v5, -0x1

    const/4 v3, 0x0

    if-eq v0, v5, :cond_0

    .line 44272
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Jp;->A06:I

    .line 44273
    :cond_0
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0C:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const-string v1, "Up7OwHpaobzLA4EM9I6S8ympi8egU1xp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Jc7mAyZPvPSNSMBgW0QbkIOpFbTkWds1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v4, v5, :cond_1

    .line 44274
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0C:I

    .line 44275
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A04:I

    if-eq v0, v5, :cond_2

    .line 44276
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Jp;->A04:I

    .line 44277
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A02:I

    if-eq v0, v5, :cond_3

    .line 44278
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Jp;->A02:I

    .line 44279
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0I:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0B:I

    if-ge v1, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    .line 44280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v0, 0xf

    if-lt v1, v0, :cond_8

    .line 44281
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 44282
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 44283
    :cond_8
    return-void
.end method

.method public final A0A(II)V
    .locals 4

    .line 44284
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0A:I

    if-eq v0, p1, :cond_0

    .line 44285
    const/16 v3, 0xa

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const-string v1, "EQrEdXyc1aYcjFG7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "uymaty7PipZZJPSz7splP0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 44286
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0A:I

    .line 44287
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0B(III)V
    .locals 6

    .line 44288
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A04:I

    const/16 v4, 0x21

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 44289
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A03:I

    if-eq v0, p1, :cond_0

    .line 44290
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A03:I

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    .line 44291
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 44292
    invoke-virtual {v5, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44293
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Jp;->A0P:I

    if-eq p1, v0, :cond_1

    .line 44294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A04:I

    .line 44295
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A03:I

    .line 44296
    :cond_1
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Jp;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const-string v1, "zeXFeOtKIORA1zWkRmXlR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "fnzPNusOGbFXzxR4hah6k"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_2

    .line 44297
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A01:I

    if-eq v0, p2, :cond_2

    .line 44298
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A01:I

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    .line 44299
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 44300
    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44301
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    if-eq p2, v0, :cond_3

    .line 44302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A02:I

    .line 44303
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Jp;->A01:I

    .line 44304
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0C(IIIZZII)V
    .locals 6

    .line 44305
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A06:I

    const/16 v5, 0x21

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 44306
    if-nez p4, :cond_0

    .line 44307
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x2

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    .line 44308
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 44309
    invoke-virtual {v3, v2, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44310
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Jp;->A06:I

    .line 44311
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0C:I

    if-eq v0, v4, :cond_2

    .line 44312
    if-nez p5, :cond_1

    .line 44313
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0C:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    .line 44314
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 44315
    invoke-virtual {v3, v2, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44316
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0C:I

    .line 44317
    :cond_1
    :goto_1
    return-void

    .line 44318
    :cond_2
    if-eqz p5, :cond_1

    .line 44319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0C:I

    goto :goto_1

    .line 44320
    :cond_3
    if-eqz p4, :cond_0

    .line 44321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A06:I

    goto :goto_0
.end method

.method public final A0D(IIZIIII)V
    .locals 0

    .line 44322
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0E:I

    .line 44323
    iput p7, p0, Lcom/facebook/ads/redexgen/X/Jp;->A07:I

    .line 44324
    return-void
.end method

.method public final A0E(Z)V
    .locals 0

    .line 44325
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0J:Z

    .line 44326
    return-void
.end method

.method public final A0F(ZZZIZIIIIIII)V
    .locals 11

    .line 44327
    move-object v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0G:Z

    .line 44328
    iput-boolean p1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0J:Z

    .line 44329
    iput-boolean p2, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0I:Z

    .line 44330
    iput p4, v0, Lcom/facebook/ads/redexgen/X/Jp;->A09:I

    .line 44331
    move/from16 v1, p5

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0H:Z

    .line 44332
    move/from16 v1, p6

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0D:I

    .line 44333
    move/from16 v1, p7

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A05:I

    .line 44334
    move/from16 v1, p10

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A00:I

    .line 44335
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0B:I

    add-int/lit8 v1, p8, 0x1

    if-eq v2, v1, :cond_2

    .line 44336
    add-int/lit8 v1, p8, 0x1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0B:I

    .line 44337
    :goto_0
    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0B:I

    if-ge v2, v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    .line 44338
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v1, 0xf

    if-lt v2, v1, :cond_2

    .line 44339
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 44340
    :cond_2
    move/from16 v2, p11

    if-eqz v2, :cond_3

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0F:I

    if-eq v1, v2, :cond_3

    .line 44341
    iput v2, v0, Lcom/facebook/ads/redexgen/X/Jp;->A0F:I

    .line 44342
    add-int/lit8 v2, v2, -0x1

    .line 44343
    .local p5, "windowStyleIdIndex":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0U:[I

    aget v3, v1, v2

    sget v4, Lcom/facebook/ads/redexgen/X/Jp;->A0Q:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0Y:[Z

    aget-boolean v5, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0W:[I

    aget v7, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0X:[I

    aget v8, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0V:[I

    aget v9, v1, v2

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Jp;->A0D(IIZIIII)V

    .line 44344
    .end local p5    # "windowStyleIdIndex":I
    :cond_3
    move/from16 v2, p12

    if-eqz v2, :cond_4

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Jp;->A08:I

    if-eq v1, v2, :cond_4

    .line 44345
    iput v2, v0, Lcom/facebook/ads/redexgen/X/Jp;->A08:I

    .line 44346
    add-int/lit8 v2, v2, -0x1

    .line 44347
    .local p5, "penStyleIdIndex":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0S:[I

    aget v9, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0T:[I

    aget v10, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Jp;->A0C(IIIZZII)V

    .line 44348
    sget v3, Lcom/facebook/ads/redexgen/X/Jp;->A0P:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A0R:[I

    aget v2, v1, v2

    sget v1, Lcom/facebook/ads/redexgen/X/Jp;->A0O:I

    invoke-virtual {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jp;->A0B(III)V

    .line 44349
    .end local p5    # "penStyleIdIndex":I
    :cond_4
    return-void
.end method

.method public final A0G()Z
    .locals 1

    .line 44350
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0G:Z

    return v0
.end method

.method public final A0H()Z
    .locals 4

    .line 44351
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jp;->A0G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0L:Ljava/util/List;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A0N:[Ljava/lang/String;

    const-string v1, "bd5mzLDHwmkoJbeiVaa7u"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zXPgjXTtuY4PD8las8bey"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I()Z
    .locals 1

    .line 44352
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jp;->A0J:Z

    return v0
.end method
