.class public final enum Lcom/google/ads/interactivemedia/v3/internal/zzvm;
.super Ljava/lang/Enum;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final enum zza:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

.field public static final enum zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

.field public static final enum zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

.field private static final synthetic zzd:[Lcom/google/ads/interactivemedia/v3/internal/zzvm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    const-string v1, "LENIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzvm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    .line 2
    const-string v3, "LEGACY_STRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzvm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    .line 3
    const-string v5, "STRICT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzvm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zzd:[Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/zzvm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zzd:[Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/zzvm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    return-object v0
.end method
