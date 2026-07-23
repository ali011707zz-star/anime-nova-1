.class public final Lcom/google/android/gms/internal/ads/zzgj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzguf;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzgc;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzge;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzgi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzguf;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzb:Lcom/google/android/gms/internal/ads/zzgc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzc:Lcom/google/android/gms/internal/ads/zzge;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzd:Lcom/google/android/gms/internal/ads/zzgi;

    return-void
.end method
