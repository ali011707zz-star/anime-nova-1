.class public final Lcom/google/android/gms/internal/ads/zzifv;
.super Lcom/google/android/gms/internal/ads/zzibl;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzihz;->zzr()Lcom/google/android/gms/internal/ads/zzihz;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzibl;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzihz;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzihz;->zzh(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzihz;->zzi(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzifx;)Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzihz;->zzj(Lcom/google/android/gms/internal/ads/zzifx;)V

    return-object p0
.end method

.method public final zze()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzihz;->zzd()Ljava/util/List;

    move-result-object v0

    .line 1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzihk;)Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzihz;->zzk(Lcom/google/android/gms/internal/ads/zzihk;)V

    return-object p0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzihz;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzihz;->zzl(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzihz;->zzm()V

    return-object p0
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzihf;)Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzihz;->zzn(Lcom/google/android/gms/internal/ads/zzihf;)V

    return-object p0
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzihm;)Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzihz;->zzo(Lcom/google/android/gms/internal/ads/zzihm;)V

    return-object p0
.end method

.method public final zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzihz;->zzp(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzm(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzihz;->zzq(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzn(I)Lcom/google/android/gms/internal/ads/zzifv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzihz;->zzs(I)V

    return-object p0
.end method
