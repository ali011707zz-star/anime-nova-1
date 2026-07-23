.class final synthetic Lcom/google/android/gms/internal/ads/zzgro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgqq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgqq;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zza:Lcom/google/android/gms/internal/ads/zzgqq;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgrr;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zza:Lcom/google/android/gms/internal/ads/zzgqq;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgri;-><init>(Lcom/google/android/gms/internal/ads/zzgrr;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/ads/zzgqq;)V

    return-object v0
.end method
