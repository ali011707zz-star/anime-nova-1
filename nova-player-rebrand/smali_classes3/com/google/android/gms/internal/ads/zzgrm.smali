.class final synthetic Lcom/google/android/gms/internal/ads/zzgrm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgqs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgqs;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgrm;->zza:Lcom/google/android/gms/internal/ads/zzgqs;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgrr;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrm;->zza:Lcom/google/android/gms/internal/ads/zzgqs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgqs;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzgqr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgrj;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgrj;-><init>(Lcom/google/android/gms/internal/ads/zzgrr;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/ads/zzgqr;)V

    return-object v1
.end method
