.class final synthetic Lcom/google/android/gms/internal/ads/zzgmc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgme;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgdu;

.field private final synthetic zzc:[B

.field private final synthetic zzd:[B


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgme;Lcom/google/android/gms/internal/ads/zzgdu;[B[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmc;->zza:Lcom/google/android/gms/internal/ads/zzgme;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgmc;->zzb:Lcom/google/android/gms/internal/ads/zzgdu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgmc;->zzc:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgmc;->zzd:[B

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmc;->zza:Lcom/google/android/gms/internal/ads/zzgme;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmc;->zzb:Lcom/google/android/gms/internal/ads/zzgdu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgmc;->zzc:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgmc;->zzd:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgme;->zzi(Lcom/google/android/gms/internal/ads/zzgdu;[B[B)Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
