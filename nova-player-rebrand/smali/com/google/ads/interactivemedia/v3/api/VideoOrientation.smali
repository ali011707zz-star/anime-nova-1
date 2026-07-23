.class public final enum Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;
.super Ljava/lang/Enum;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final enum zza:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

.field public static final enum zzb:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

.field public static final enum zzc:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

.field public static final enum zzd:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

.field private static final synthetic zze:[Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;->zza:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    .line 2
    const-string v4, "LANDSCAPE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;->zzb:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    .line 3
    const-string v6, "PORTRAIT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;->zzc:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    .line 4
    const-string v8, "SQUARE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;->zzd:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    new-array v8, v9, [Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;->zze:[Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;->zze:[Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;->zzf:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
