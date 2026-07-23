.class final Lcom/google/android/gms/internal/ads/zzdna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# instance fields
.field private final zza:Ljava/lang/ref/WeakReference;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfoo;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdnb;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfoo;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/lang/ref/WeakReference;

    invoke-direct {p5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdna;->zza:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzb:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzd:Lcom/google/android/gms/internal/ads/zzfoo;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdna;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdnb;

    const-string v0, "u"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzb:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzd:Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnb;->zzF()Lcom/google/android/gms/internal/ads/zzddu;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfqk;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzddu;)V

    :cond_1
    :goto_0
    return-void
.end method
