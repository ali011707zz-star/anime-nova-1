.class public final Lcom/google/android/gms/internal/ads/zzeut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeut;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzeut;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeut;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzeut;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeur;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeut;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcna;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcna;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzeur;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzeur;-><init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzgzy;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeut;->zza()Lcom/google/android/gms/internal/ads/zzeur;

    move-result-object v0

    return-object v0
.end method
