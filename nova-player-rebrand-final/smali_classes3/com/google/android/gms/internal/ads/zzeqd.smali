.class public final Lcom/google/android/gms/internal/ads/zzeqd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdlu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqd;->zza:Lcom/google/android/gms/internal/ads/zzdlu;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzepz;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzeqb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqa;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzeqa;-><init>(Lcom/google/android/gms/internal/ads/zzeqd;Lcom/google/android/gms/internal/ads/zzfir;)V

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzeqb;-><init>(Lcom/google/android/gms/internal/ads/zzeqd;Lcom/google/android/gms/internal/ads/zzdmc;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwv;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqd;->zza:Lcom/google/android/gms/internal/ads/zzdlu;

    .line 2
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzdlu;->zzd(Lcom/google/android/gms/internal/ads/zzcwv;Lcom/google/android/gms/internal/ads/zzdkr;)Lcom/google/android/gms/internal/ads/zzdko;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeqc;

    .line 3
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzeqc;-><init>(Lcom/google/android/gms/internal/ads/zzeqd;Lcom/google/android/gms/internal/ads/zzdko;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzepz;->zzd(Lcom/google/android/gms/ads/internal/zzg;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdko;->zzh()Lcom/google/android/gms/internal/ads/zzdkn;

    move-result-object p1

    return-object p1
.end method
