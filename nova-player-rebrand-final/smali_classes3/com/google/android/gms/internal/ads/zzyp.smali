.class public abstract Lcom/google/android/gms/internal/ads/zzyp;
.super Lcom/google/android/gms/internal/ads/zzvs;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzwm;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzwm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyp;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    return-void
.end method


# virtual methods
.method protected abstract zzB()V
.end method

.method public abstract zzD(Lcom/google/android/gms/internal/ads/zzwi;)V
.end method

.method protected abstract zzE(Lcom/google/android/gms/internal/ads/zzbf;)V
.end method

.method protected abstract zzF(Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwk;
.end method

.method public final zzH()Lcom/google/android/gms/internal/ads/zzbf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyp;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwm;->zzH()Lcom/google/android/gms/internal/ads/zzbf;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzI()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyp;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwm;->zzI()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final zzJ()Lcom/google/android/gms/internal/ads/zzak;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyp;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwm;->zzJ()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v0

    return-object v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzvs;->zza(Lcom/google/android/gms/internal/ads/zzhz;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyp;->zzB()V

    return-void
.end method

.method protected final synthetic zzu(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwm;Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzyp;->zzE(Lcom/google/android/gms/internal/ads/zzbf;)V

    return-void
.end method

.method protected final bridge synthetic zzw(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    const/4 p1, 0x0

    return p1
.end method

.method protected final synthetic zzx(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwk;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzyp;->zzF(Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzy(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/zzwk;)J
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    return-wide p2
.end method
