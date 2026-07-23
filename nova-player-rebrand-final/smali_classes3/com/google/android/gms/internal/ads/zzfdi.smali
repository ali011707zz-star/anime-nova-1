.class public final Lcom/google/android/gms/internal/ads/zzfdi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfdc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfdc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfdc;)Lcom/google/android/gms/internal/ads/zzfdi;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfdi;-><init>(Lcom/google/android/gms/internal/ads/zzfdc;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzfdc;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfdc;->zzi()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfdc;->zzi()I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfdi;->zza()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
