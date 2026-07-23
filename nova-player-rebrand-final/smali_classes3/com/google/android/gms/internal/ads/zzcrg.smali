.class public final Lcom/google/android/gms/internal/ads/zzcrg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrg;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzcrg;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcrg;-><init>(Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrg;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcpm;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpm;->zza()Lcom/google/android/gms/internal/ads/zzccj;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcrf;-><init>(Lcom/google/android/gms/internal/ads/zzccj;)V

    return-object v1
.end method
