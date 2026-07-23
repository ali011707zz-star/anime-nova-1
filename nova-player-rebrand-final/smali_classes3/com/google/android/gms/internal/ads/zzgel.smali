.class final Lcom/google/android/gms/internal/ads/zzgel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdv;


# instance fields
.field private final zza:Ljava/util/concurrent/ExecutorService;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgmz;

.field private final zze:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzikv;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgbf;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzgmz;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzikv;Lcom/google/android/gms/internal/ads/zzgbf;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgel;->zza:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzb:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzc:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzd:Lcom/google/android/gms/internal/ads/zzgmz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgel;->zze:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzf:Lcom/google/android/gms/internal/ads/zzikv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzg:Lcom/google/android/gms/internal/ads/zzgbf;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "1.825731049"

    return-object v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgek;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgek;-><init>(Lcom/google/android/gms/internal/ads/zzgel;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgel;->zza:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzf:Lcom/google/android/gms/internal/ads/zzikv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgfb;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfb;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzd:Lcom/google/android/gms/internal/ads/zzgmz;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgmz;->zzb()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgfb;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxg;->zzj()Lcom/google/android/gms/internal/ads/zzawg;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgfb;->zzc(Lcom/google/android/gms/internal/ads/zzawg;)Lcom/google/android/gms/internal/ads/zzgfb;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcc;->zza:Lcom/google/android/gms/internal/ads/zzgcc;

    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgfb;->zzb(Lcom/google/android/gms/internal/ads/zzgcc;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgfb;->zza()Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgfc;->zza()Lcom/google/android/gms/internal/ads/zzgez;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgez;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzf:Lcom/google/android/gms/internal/ads/zzikv;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgfb;

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzgfb;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p2

    .line 3
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzgfb;->zzg(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 4
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/zzgfb;->zzf(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzg:Lcom/google/android/gms/internal/ads/zzgbf;

    .line 5
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgbf;->zze()Z

    move-result p4

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string p4, ""

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/zzgfb;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzd:Lcom/google/android/gms/internal/ads/zzgmz;

    .line 6
    invoke-virtual {p4, p1, p3}, Lcom/google/android/gms/internal/ads/zzgmz;->zzc(Landroid/content/Context;Landroid/view/View;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzgfb;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxg;->zzj()Lcom/google/android/gms/internal/ads/zzawg;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzgfb;->zzc(Lcom/google/android/gms/internal/ads/zzawg;)Lcom/google/android/gms/internal/ads/zzgfb;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgcc;->zzb:Lcom/google/android/gms/internal/ads/zzgcc;

    .line 8
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzgfb;->zzb(Lcom/google/android/gms/internal/ads/zzgcc;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgfb;->zza()Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgfc;->zza()Lcom/google/android/gms/internal/ads/zzgez;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgez;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgel;->zze:Lcom/google/android/gms/internal/ads/zzika;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzd:Lcom/google/android/gms/internal/ads/zzgmz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgmz;->zzd()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzget;

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzget;->zzb(Ljava/util/Map;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzf:Lcom/google/android/gms/internal/ads/zzikv;

    .line 3
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzgfb;

    .line 4
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzgfb;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzgfb;->zzg(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzgfb;

    const/4 p3, 0x0

    .line 6
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzgfb;->zzf(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgfb;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgfb;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgfb;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgcc;->zzc:Lcom/google/android/gms/internal/ads/zzgcc;

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgfb;->zzb(Lcom/google/android/gms/internal/ads/zzgcc;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxg;->zzj()Lcom/google/android/gms/internal/ads/zzawg;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgfb;->zzc(Lcom/google/android/gms/internal/ads/zzawg;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgfb;->zza()Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgfc;->zza()Lcom/google/android/gms/internal/ads/zzgez;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgez;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Landroid/view/InputEvent;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zze:Lcom/google/android/gms/internal/ads/zzika;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzget;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzget;->zza(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final zzg()I
    .locals 1

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method final synthetic zzh()Ljava/lang/Void;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzc:Lcom/google/android/gms/internal/ads/zzika;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfe;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzb:Lcom/google/android/gms/internal/ads/zzika;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgfx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgfx;->zza()V

    const/4 v0, 0x0

    return-object v0
.end method
