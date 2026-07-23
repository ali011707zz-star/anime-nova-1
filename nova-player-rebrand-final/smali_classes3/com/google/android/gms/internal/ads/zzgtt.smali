.class final Lcom/google/android/gms/internal/ads/zzgtt;
.super Lcom/google/android/gms/internal/ads/zzgus;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgtt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgtt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zza:Lcom/google/android/gms/internal/ads/zzgtt;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwf;->zza:Lcom/google/android/gms/internal/ads/zzgui;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgus;-><init>(Lcom/google/android/gms/internal/ads/zzgui;ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgun;->map:Lcom/google/android/gms/internal/ads/zzgui;

    return-object v0
.end method
