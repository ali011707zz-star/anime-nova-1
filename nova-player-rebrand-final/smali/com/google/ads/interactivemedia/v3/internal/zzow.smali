.class public final Lcom/google/ads/interactivemedia/v3/internal/zzow;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "ADS_ID"

    const-wide/16 v2, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzow;->zza:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v2, "MAKE_REQUEST_WITH_SIGNALS"

    const-wide/16 v5, 0x1

    .line 2
    invoke-direct {v1, v2, v5, v6, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzow;->zzb:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzow;->zzc:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
