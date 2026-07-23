.class public final Lcom/google/android/gms/internal/ads/zzdap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdao;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdap;->zza:Lcom/google/android/gms/internal/ads/zzdao;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzdap;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdap;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdap;-><init>(Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdap;->zza:Lcom/google/android/gms/internal/ads/zzdao;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdao;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object v0

    return-object v0
.end method
