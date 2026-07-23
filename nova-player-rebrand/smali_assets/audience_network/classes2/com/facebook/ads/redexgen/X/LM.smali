.class public final Lcom/facebook/ads/redexgen/X/LM;
.super Landroid/os/AsyncTask;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/T4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/T4;"
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/b8;

.field public A03:Z

.field public final A04:I

.field public final A05:I

.field public final A06:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/b5;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/gi;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 988
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tk2ciTRcvMIsX7PNNAsbqXfz4cjsZNd3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5z01THRYCfHu8Ay0wH5meUoLhFHMZyns"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VYXg8wObxMc7BeMRrzz5UEer"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1KBjMNFbEleLBxdQS2J3kw1LUfJ9GnIf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PvEnCL5gthOso5MBRjJGXOGrZMhqPY73"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dw8jODS3DySi5ymezTFU6bMU1A3tjNXQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LM;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LM;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;IILcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 50149
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A03:Z

    .line 50151
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A00:I

    .line 50152
    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A01:I

    .line 50153
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A07:Ljava/lang/ref/WeakReference;

    .line 50154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A06:Ljava/lang/ref/WeakReference;

    .line 50155
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A08:Ljava/lang/ref/WeakReference;

    .line 50156
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A09:Ljava/lang/ref/WeakReference;

    .line 50157
    iput p2, p0, Lcom/facebook/ads/redexgen/X/LM;->A04:I

    .line 50158
    iput p3, p0, Lcom/facebook/ads/redexgen/X/LM;->A05:I

    .line 50159
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 2

    .line 50160
    const/16 v1, 0xc

    const/16 v0, 0x10

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/view/ViewGroup;IILcom/facebook/ads/redexgen/X/gi;)V

    .line 50161
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 3

    .line 50162
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50163
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/LM;->A03:Z

    .line 50164
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A00:I

    .line 50165
    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A01:I

    .line 50166
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A07:Ljava/lang/ref/WeakReference;

    .line 50167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LM;->A06:Ljava/lang/ref/WeakReference;

    .line 50168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A08:Ljava/lang/ref/WeakReference;

    .line 50169
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LM;->A09:Ljava/lang/ref/WeakReference;

    .line 50170
    iput v2, p0, Lcom/facebook/ads/redexgen/X/LM;->A04:I

    .line 50171
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A05:I

    .line 50172
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b5;Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 50173
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A03:Z

    .line 50175
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A00:I

    .line 50176
    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A01:I

    .line 50177
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A07:Ljava/lang/ref/WeakReference;

    .line 50178
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A06:Ljava/lang/ref/WeakReference;

    .line 50179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A08:Ljava/lang/ref/WeakReference;

    .line 50180
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A09:Ljava/lang/ref/WeakReference;

    .line 50181
    const/16 v0, 0xc

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A04:I

    .line 50182
    const/16 v0, 0x10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A05:I

    .line 50183
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LM;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x54

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LM;->A0A:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2dt
        0x2ft
        0x24t
        0x2ft
        0x38t
        0x23t
        0x29t
    .end array-data
.end method

.method private final A02([Landroid/graphics/Bitmap;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 50184
    .local v0, "this":Lcom/facebook/ads/redexgen/X/LM;
    .local p0, "result":[Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A08:Ljava/lang/ref/WeakReference;

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 50185
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A08:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 50186
    .local v1, "imageView":Landroid/widget/ImageView;
    aget-object v0, p1, v5

    if-eqz v0, :cond_1

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A03:Z

    if-nez v0, :cond_1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A04:I

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 50187
    aget-object v0, p1, v5

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50188
    return-void

    .line 50189
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/LM;
    :cond_1
    if-eqz v1, :cond_2

    .line 50190
    aget-object v0, p1, v6

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50191
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A06:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 50192
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A06:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/b5;

    .line 50193
    .local v1, "blurBorderView":Lcom/facebook/ads/redexgen/X/b5;
    if-eqz v2, :cond_3

    .line 50194
    aget-object v1, p1, v6

    aget-object v0, p1, v5

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 50195
    .end local v1    # "blurBorderView":Lcom/facebook/ads/redexgen/X/b5;
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A09:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A09:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    aget-object v0, p1, v5

    if-eqz v0, :cond_4

    .line 50196
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A09:Ljava/lang/ref/WeakReference;

    .line 50197
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget-object v1, p1, v5

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 50198
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 50199
    :cond_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/LM;->A02:Lcom/facebook/ads/redexgen/X/b8;

    if-eqz v0, :cond_5

    .line 50200
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/LM;->A02:Lcom/facebook/ads/redexgen/X/b8;

    aget-object v1, p1, v6

    new-instance v0, Lcom/facebook/ads/redexgen/X/b7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/b8;->AE7(Lcom/facebook/ads/redexgen/X/b7;)V

    .line 50201
    :cond_5
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "result":[Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final varargs A03([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 12

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    return-object v11

    :cond_0
    move-object v5, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/LM;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_5

    .line 50202
    .local v0, "this":Lcom/facebook/ads/redexgen/X/LM;
    .local p3, "urls":[Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/LM;->A0B:[Ljava/lang/String;

    const-string v1, "Jzd8uX0XYQJZtrGuhrAJ2cBOXObB1Sdn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v3, 0x0

    :try_start_0
    aget-object v7, p1, v3

    .line 50203
    .local v3, "url":Ljava/lang/String;
    const/4 v8, 0x0

    .line 50204
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 50205
    .local v5, "blurBitmap":Landroid/graphics/Bitmap;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/LM;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/gi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50206
    .local v6, "context":Lcom/facebook/ads/redexgen/X/gi;
    const/4 v10, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/LM;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/LM;->A0B:[Ljava/lang/String;

    const-string v1, "bv0UYUwFwYp94NQ105UqaFrunwxSHAuK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x2

    if-nez v6, :cond_1

    .line 50207
    :try_start_1
    new-array v0, v0, [Landroid/graphics/Bitmap;

    aput-object v8, v0, v3

    aput-object v9, v0, v10

    return-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50208
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/LM;
    :cond_1
    :try_start_2
    new-instance v4, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v4, v6}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iget v2, v5, Lcom/facebook/ads/redexgen/X/LM;->A00:I

    iget v1, v5, Lcom/facebook/ads/redexgen/X/LM;->A01:I

    invoke-virtual {v4, v7, v2, v1}, Lcom/facebook/ads/redexgen/X/Sx;->A0O(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 50209
    if-eqz v8, :cond_2

    iget-boolean v1, v5, Lcom/facebook/ads/redexgen/X/LM;->A03:Z

    if-nez v1, :cond_2

    .line 50210
    iget v2, v5, Lcom/facebook/ads/redexgen/X/LM;->A04:I

    iget v1, v5, Lcom/facebook/ads/redexgen/X/LM;->A05:I

    invoke-static {v6, v8, v2, v1}, Lcom/facebook/ads/redexgen/X/YL;->A01(Lcom/facebook/ads/redexgen/X/gi;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50211
    :catchall_0
    move-exception v7

    .line 50212
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v2, 0x7

    const/16 v1, 0x1e

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/LM;->A00(III)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1V:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v2, v7}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 50213
    invoke-interface {v6, v1, v4, v2}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 50214
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    new-array v0, v0, [Landroid/graphics/Bitmap;

    aput-object v8, v0, v3

    aput-object v9, v0, v10

    return-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50215
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50216
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "blurBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "context":Lcom/facebook/ads/redexgen/X/gi;
    .end local p3
    :catchall_1
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/LM;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/LM;->A0B:[Ljava/lang/String;

    const-string v1, "caPrFgLZt2WaPlUZLvOtKYt7S4BN2jGU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v11

    :cond_4
    return-object v11

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/LM;
    .locals 1

    .line 50217
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A00:I

    .line 50218
    iput v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A01:I

    .line 50219
    return-object p0
.end method

.method public final A05(II)Lcom/facebook/ads/redexgen/X/LM;
    .locals 0

    .line 50220
    iput p1, p0, Lcom/facebook/ads/redexgen/X/LM;->A00:I

    .line 50221
    iput p2, p0, Lcom/facebook/ads/redexgen/X/LM;->A01:I

    .line 50222
    return-object p0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;
    .locals 0

    .line 50223
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LM;->A02:Lcom/facebook/ads/redexgen/X/b8;

    .line 50224
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)V
    .locals 3

    .line 50225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A02:Lcom/facebook/ads/redexgen/X/b8;

    if-eqz v0, :cond_0

    .line 50227
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LM;->A02:Lcom/facebook/ads/redexgen/X/b8;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/b7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/b8;->AE7(Lcom/facebook/ads/redexgen/X/b7;)V

    .line 50228
    :cond_0
    return-void

    .line 50229
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/YG;->A06:Ljava/util/concurrent/Executor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50230
    return-void
.end method

.method public final A6m()Lcom/facebook/ads/redexgen/X/gi;
    .locals 1

    .line 50231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LM;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gi;

    return-object v0
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 50232
    .local v0, "this":Lcom/facebook/ads/redexgen/X/LM;
    :try_start_0
    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/LM;->A03([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/LM;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 50233
    .local v0, "this":Lcom/facebook/ads/redexgen/X/LM;
    :try_start_0
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/LM;->A02([Landroid/graphics/Bitmap;)V

    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/LM;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
