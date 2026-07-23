.class public final Lcom/google/android/gms/internal/ads/zzemu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekm;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdmq;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdmq;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemu;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemu;->zzb:Lcom/google/android/gms/internal/ads/zzdmq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemu;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static final zzc(Lcom/google/android/gms/internal/ads/zzfjc;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzh:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)V
    .locals 9

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzb:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfki;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzv:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzm(Lcom/google/android/gms/internal/ads/zzfiw;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzemu;->zza:Landroid/content/Context;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbtz;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzj:Lcom/google/android/gms/internal/ads/zzbkh;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzh:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 1
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzfki;->zzo(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbkh;Ljava/util/List;)V

    return-void
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfki;->zzD()Lcom/google/android/gms/internal/ads/zzbue;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfki;->zzE()Lcom/google/android/gms/internal/ads/zzbuf;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfki;->zzu()Lcom/google/android/gms/internal/ads/zzbui;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-eqz v3, :cond_0

    .line 4
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzemu;->zzc(Lcom/google/android/gms/internal/ads/zzfjc;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdoh;->zzaf(Lcom/google/android/gms/internal/ads/zzbui;)Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v5

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzemu;->zzc(Lcom/google/android/gms/internal/ads/zzfjc;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdoh;->zzai(Lcom/google/android/gms/internal/ads/zzbue;)Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v6, 0x2

    .line 6
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzemu;->zzc(Lcom/google/android/gms/internal/ads/zzfjc;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdoh;->zzah(Lcom/google/android/gms/internal/ads/zzbue;)Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 7
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzemu;->zzc(Lcom/google/android/gms/internal/ads/zzfjc;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzaj(Lcom/google/android/gms/internal/ads/zzbuf;)Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 8
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzemu;->zzc(Lcom/google/android/gms/internal/ads/zzfjc;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzag(Lcom/google/android/gms/internal/ads/zzbuf;)Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_4

    .line 15
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdoh;->zzx()I

    move-result v7

    .line 16
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfjk;->zzh:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzemu;->zzb:Lcom/google/android/gms/internal/ads/zzdmq;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzekj;->zza:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcwv;

    invoke-direct {v7, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdos;

    invoke-direct {p1, v5}, Lcom/google/android/gms/internal/ads/zzdos;-><init>(Lcom/google/android/gms/internal/ads/zzdoh;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdql;

    invoke-direct {p2, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzdql;-><init>(Lcom/google/android/gms/internal/ads/zzbuf;Lcom/google/android/gms/internal/ads/zzbue;Lcom/google/android/gms/internal/ads/zzbui;)V

    .line 19
    invoke-virtual {v4, v7, p1, p2}, Lcom/google/android/gms/internal/ads/zzdmq;->zze(Lcom/google/android/gms/internal/ads/zzcwv;Lcom/google/android/gms/internal/ads/zzdos;Lcom/google/android/gms/internal/ads/zzdql;)Lcom/google/android/gms/internal/ads/zzdoj;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    .line 20
    check-cast p2, Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzf()Lcom/google/android/gms/internal/ads/zzepk;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzelv;->zzc(Lcom/google/android/gms/internal/ads/zzbtz;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zza()Lcom/google/android/gms/internal/ads/zzdce;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcrl;

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzcrl;-><init>(Lcom/google/android/gms/internal/ads/zzfki;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemu;->zzc:Ljava/util/concurrent/Executor;

    .line 22
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdhd;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdok;->zzh()Lcom/google/android/gms/internal/ads/zzdoc;

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzenv;

    const-string p2, "No corresponding native ad listener"

    .line 18
    invoke-direct {p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    throw p1

    .line 8
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzenv;

    const-string p2, "No native ad mappers"

    .line 9
    invoke-direct {p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    throw p1
.end method
