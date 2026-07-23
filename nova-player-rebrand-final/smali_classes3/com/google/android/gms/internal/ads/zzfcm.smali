.class public final Lcom/google/android/gms/internal/ads/zzfcm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfcm;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfcm;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfcm;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcpy;->zza()Lcom/google/android/gms/internal/ads/zzbfs;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcm;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcmj;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcmj;->zza()Landroid/content/Context;

    move-result-object v2

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfck;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfck;-><init>(Lcom/google/android/gms/internal/ads/zzbfs;Lcom/google/android/gms/internal/ads/zzgzy;Landroid/content/Context;)V

    return-object v3
.end method
