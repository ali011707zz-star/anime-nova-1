.class public final Lcom/google/android/gms/internal/ads/zzcoy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcox;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcox;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoy;->zza:Lcom/google/android/gms/internal/ads/zzcox;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcox;)Lcom/google/android/gms/internal/ads/zzcoy;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcoy;-><init>(Lcom/google/android/gms/internal/ads/zzcox;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcox;)Lcom/google/android/gms/ads/internal/zza;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/ads/internal/zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchb;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcfw;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lcom/google/android/gms/internal/ads/zzchb;Lcom/google/android/gms/internal/ads/zzcfl;)V

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoy;->zza:Lcom/google/android/gms/internal/ads/zzcox;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcoy;->zzd(Lcom/google/android/gms/internal/ads/zzcox;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoy;->zza:Lcom/google/android/gms/internal/ads/zzcox;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcoy;->zzd(Lcom/google/android/gms/internal/ads/zzcox;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    return-object v0
.end method
