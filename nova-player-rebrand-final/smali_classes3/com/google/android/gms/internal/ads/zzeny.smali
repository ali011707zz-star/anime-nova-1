.class public final Lcom/google/android/gms/internal/ads/zzeny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfnu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdbh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfqg;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcwi;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzenr;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzekl;

.field private final zzj:Landroid/content/Context;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfoo;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzenb;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdxt;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzenr;Lcom/google/android/gms/internal/ads/zzdbh;Lcom/google/android/gms/internal/ads/zzfqg;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzcwi;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzekl;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzenb;Lcom/google/android/gms/internal/ads/zzdxt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzj:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeny;->zza:Lcom/google/android/gms/internal/ads/zzfnu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzh:Lcom/google/android/gms/internal/ads/zzenr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzb:Lcom/google/android/gms/internal/ads/zzdbh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzc:Lcom/google/android/gms/internal/ads/zzfqg;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzd:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzg:Lcom/google/android/gms/internal/ads/zzcwi;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeny;->zze:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzi:Lcom/google/android/gms/internal/ads/zzekl;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzk:Lcom/google/android/gms/internal/ads/zzfoo;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzl:Lcom/google/android/gms/internal/ads/zzenb;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzm:Lcom/google/android/gms/internal/ads/zzdxt;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzfjc;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzgA:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "No fill."

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const-string v0, "No ad config."

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfiu;->zzf:I

    if-eqz v2, :cond_3

    const/16 v3, 0xc8

    const/16 v4, 0x12c

    if-lt v2, v3, :cond_1

    if-ge v2, v4, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzgz:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_1
    if-lt v2, v4, :cond_2

    const/16 v0, 0x190

    if-ge v2, v0, :cond_2

    const-string v1, "No location header to follow redirect or too many redirects."

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x23

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received error HTTP response code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 6
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfiu;->zzj:Lcom/google/android/gms/internal/ads/zzfit;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfit;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 12

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfjc;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjb;->zzd:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzm:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcL:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzm:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxh;->zzu:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeny;->zzb(Lcom/google/android/gms/internal/ads/zzfjc;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzi:Lcom/google/android/gms/internal/ads/zzekl;

    .line 12
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzekl;->zza(Lcom/google/android/gms/internal/ads/zzfiu;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzjE:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzfiu;->zzf:I

    if-eqz v4, :cond_3

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_2

    const/16 v6, 0x12c

    if-lt v4, v6, :cond_3

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzenv;

    .line 46
    invoke-direct {p1, v5, v0}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzfiu;->zzq:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzev:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfjb;->zza:Ljava/util/List;

    .line 25
    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzekl;->zzc(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 44
    :cond_4
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzfjb;->zza:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfir;

    .line 18
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzekl;->zzb(Lcom/google/android/gms/internal/ads/zzfir;)V

    .line 19
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzfir;->zza:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzg:Lcom/google/android/gms/internal/ads/zzcwi;

    .line 20
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzfir;->zzb:I

    .line 21
    invoke-interface {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzcwi;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 22
    invoke-interface {v8, p1, v4}, Lcom/google/android/gms/internal/ads/zzekg;->zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_0

    :cond_6
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 23
    invoke-static {v6, v9, v9}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v9

    .line 24
    invoke-virtual {v1, v4, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzekl;->zze(Lcom/google/android/gms/internal/ads/zzfir;JLcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_0

    .line 25
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzb:Lcom/google/android/gms/internal/ads/zzdbh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzd:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzc:Lcom/google/android/gms/internal/ads/zzfqg;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcrz;

    .line 26
    invoke-direct {v7, p1, v1, v4}, Lcom/google/android/gms/internal/ads/zzcrz;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzfqg;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeny;->zze:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzdhd;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzfiu;->zzr:I

    if-le v0, v6, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzl:Lcom/google/android/gms/internal/ads/zzenb;

    .line 45
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzenb;->zza(Lcom/google/android/gms/internal/ads/zzfjc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 27
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeny;->zzb(Lcom/google/android/gms/internal/ads/zzfjc;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeny;->zza:Lcom/google/android/gms/internal/ads/zzfnu;

    .line 28
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfno;->zzn:Lcom/google/android/gms/internal/ads/zzfno;

    .line 29
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzenv;

    .line 30
    invoke-direct {v6, v5, v0}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    .line 31
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 32
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzfnf;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfnm;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzh:Lcom/google/android/gms/internal/ads/zzenr;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzenr;->zza()V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfjb;->zza:Ljava/util/List;

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfir;

    .line 36
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzfir;->zza:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzg:Lcom/google/android/gms/internal/ads/zzcwi;

    .line 37
    iget v10, v6, Lcom/google/android/gms/internal/ads/zzfir;->zzb:I

    .line 38
    invoke-interface {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzcwi;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 39
    invoke-interface {v9, p1, v6}, Lcom/google/android/gms/internal/ads/zzekg;->zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfno;->zzo:Lcom/google/android/gms/internal/ads/zzfno;

    .line 40
    invoke-virtual {v3, v7, v0}, Lcom/google/android/gms/internal/ads/zzfnm;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v7, v7, 0xf

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/2addr v7, v10

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "render-config-"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfnl;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzenx;

    invoke-direct {v7, p0, v6, p1, v9}, Lcom/google/android/gms/internal/ads/zzenx;-><init>(Lcom/google/android/gms/internal/ads/zzeny;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzekg;)V

    const-class v6, Ljava/lang/Throwable;

    .line 42
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzfnl;->zzg(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object v0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 44
    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzenw;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/ads/zzenw;-><init>(Lcom/google/android/gms/internal/ads/zzenr;)V

    invoke-interface {v0, p1, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzekg;Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzj:Landroid/content/Context;

    const/16 v0, 0xc

    invoke-static {p4, v0}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object p4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzE:Ljava/lang/String;

    .line 2
    invoke-interface {p4, v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoe;

    .line 3
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzfoe;->zza()Lcom/google/android/gms/internal/ads/zzfoe;

    .line 4
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzekg;->zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzR:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-static {p3, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzc:Lcom/google/android/gms/internal/ads/zzfqg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzh:Lcom/google/android/gms/internal/ads/zzenr;

    .line 6
    invoke-virtual {v1, p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzenr;->zze(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfqg;)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzk:Lcom/google/android/gms/internal/ads/zzfoo;

    .line 7
    invoke-static {p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzfon;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)V

    return-object p3
.end method
