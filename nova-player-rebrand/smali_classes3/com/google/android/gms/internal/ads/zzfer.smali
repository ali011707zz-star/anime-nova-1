.class public final Lcom/google/android/gms/internal/ads/zzfer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbi;
.implements Lcom/google/android/gms/internal/ads/zzdde;
.implements Lcom/google/android/gms/internal/ads/zzfgg;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/internal/ads/zzddw;
.implements Lcom/google/android/gms/internal/ads/zzdbv;
.implements Lcom/google/android/gms/internal/ads/zzdjm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfkv;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private zzh:Lcom/google/android/gms/internal/ads/zzfer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfkv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfer;->zza:Lcom/google/android/gms/internal/ads/zzfkv;

    return-void
.end method

.method public static zzn(Lcom/google/android/gms/internal/ads/zzfer;)Lcom/google/android/gms/internal/ads/zzfer;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfer;->zza:Lcom/google/android/gms/internal/ads/zzfkv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfer;-><init>(Lcom/google/android/gms/internal/ads/zzfkv;)V

    .line 2
    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    return-object v0
.end method


# virtual methods
.method public final zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfer;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfeh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfeh;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfei;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfei;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzdQ()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdS()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfer;->zzdS()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfed;->zza:Lcom/google/android/gms/internal/ads/zzfed;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzdT(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfer;->zzdT(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfej;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfej;-><init>(I)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzdo()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdp()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdq()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfer;->zzdu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfep;->zza:Lcom/google/android/gms/internal/ads/zzfep;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzdv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfer;->zzdv()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfee;->zza:Lcom/google/android/gms/internal/ads/zzfee;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzdw()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdx()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdy()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdz()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfer;->zzh()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfef;->zza:Lcom/google/android/gms/internal/ads/zzfef;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfen;->zza:Lcom/google/android/gms/internal/ads/zzfen;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfeo;->zza:Lcom/google/android/gms/internal/ads/zzfeo;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfer;->zzj(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfek;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfek;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfer;->zzl()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfec;->zza:Lcom/google/android/gms/internal/ads/zzfec;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfer;->zzm(Lcom/google/android/gms/ads/internal/client/zzt;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfel;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfel;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbfe;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/ads/internal/overlay/zzr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzbex;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfer;->zzs(Lcom/google/android/gms/internal/ads/zzbex;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfeg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfeg;-><init>(Lcom/google/android/gms/internal/ads/zzbex;)V

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfer;->zzt()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zza:Lcom/google/android/gms/internal/ads/zzfkv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkv;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfem;->zza:Lcom/google/android/gms/internal/ads/zzfem;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfeq;->zza:Lcom/google/android/gms/internal/ads/zzfeq;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/internal/ads/zzfgg;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfer;->zzh:Lcom/google/android/gms/internal/ads/zzfer;

    return-void
.end method
