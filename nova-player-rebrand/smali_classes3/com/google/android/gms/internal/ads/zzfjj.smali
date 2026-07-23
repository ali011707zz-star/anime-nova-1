.class public final Lcom/google/android/gms/internal/ads/zzfjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/ads/internal/client/zzm;

.field private zzb:Lcom/google/android/gms/ads/internal/client/zzr;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/ads/internal/client/zzga;

.field private zze:Z

.field private zzf:Ljava/util/ArrayList;

.field private zzg:Ljava/util/ArrayList;

.field private zzh:Lcom/google/android/gms/internal/ads/zzbkh;

.field private zzi:Lcom/google/android/gms/ads/internal/client/zzx;

.field private zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field private zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zzl:Lcom/google/android/gms/ads/internal/client/zzco;

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzbqs;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzfix;

.field private zzp:Z

.field private zzq:Z

.field private zzr:Lcom/google/android/gms/internal/ads/zzerp;

.field private zzs:Z

.field private zzt:Landroid/os/Bundle;

.field private final zzu:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzv:Z

.field private zzw:Lcom/google/android/gms/ads/internal/client/zzcs;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzm:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfix;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzo:Lcom/google/android/gms/internal/ads/zzfix;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzs:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzv:Z

    return-void
.end method


# virtual methods
.method public final zzA()Lcom/google/android/gms/internal/ads/zzfjk;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzc:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    const-string v1, "ad size must not be null"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    const-string v1, "ad request must not be null"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjk;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfjk;-><init>(Lcom/google/android/gms/internal/ads/zzfjj;[B)V

    return-object v0
.end method

.method public final zzB()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzp:Z

    return v0
.end method

.method public final zzC()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzq:Z

    return v0
.end method

.method final synthetic zzD()Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object v0
.end method

.method final synthetic zzE()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object v0
.end method

.method final synthetic zzF()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzG()Lcom/google/android/gms/ads/internal/client/zzga;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzd:Lcom/google/android/gms/ads/internal/client/zzga;

    return-object v0
.end method

.method final synthetic zzH()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zze:Z

    return v0
.end method

.method final synthetic zzI()Ljava/util/ArrayList;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzf:Ljava/util/ArrayList;

    return-object v0
.end method

.method final synthetic zzJ()Ljava/util/ArrayList;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzg:Ljava/util/ArrayList;

    return-object v0
.end method

.method final synthetic zzK()Lcom/google/android/gms/internal/ads/zzbkh;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzh:Lcom/google/android/gms/internal/ads/zzbkh;

    return-object v0
.end method

.method final synthetic zzL()Lcom/google/android/gms/ads/internal/client/zzx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    return-object v0
.end method

.method final synthetic zzM()Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    return-object v0
.end method

.method final synthetic zzN()Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-object v0
.end method

.method final synthetic zzO()Lcom/google/android/gms/ads/internal/client/zzco;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzl:Lcom/google/android/gms/ads/internal/client/zzco;

    return-object v0
.end method

.method final synthetic zzP()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzm:I

    return v0
.end method

.method final synthetic zzQ()Lcom/google/android/gms/internal/ads/zzbqs;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzn:Lcom/google/android/gms/internal/ads/zzbqs;

    return-object v0
.end method

.method final synthetic zzR()Lcom/google/android/gms/internal/ads/zzfix;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzo:Lcom/google/android/gms/internal/ads/zzfix;

    return-object v0
.end method

.method final synthetic zzS()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzp:Z

    return v0
.end method

.method final synthetic zzT()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzq:Z

    return v0
.end method

.method final synthetic zzU()Lcom/google/android/gms/internal/ads/zzerp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzr:Lcom/google/android/gms/internal/ads/zzerp;

    return-object v0
.end method

.method final synthetic zzV()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzs:Z

    return v0
.end method

.method final synthetic zzW()Landroid/os/Bundle;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzt:Landroid/os/Bundle;

    return-object v0
.end method

.method final synthetic zzX()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method final synthetic zzY()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzv:Z

    return v0
.end method

.method public final zzZ(Lcom/google/android/gms/ads/internal/client/zzcs;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzw:Lcom/google/android/gms/ads/internal/client/zzcs;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object p0
.end method

.method final synthetic zzaa()Lcom/google/android/gms/ads/internal/client/zzcs;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzw:Lcom/google/android/gms/ads/internal/client/zzcs;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzp:Z

    return-object p0
.end method

.method public final zze(Z)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzq:Z

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object v0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/ads/internal/client/zzga;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzd:Lcom/google/android/gms/ads/internal/client/zzga;

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzfix;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzo:Lcom/google/android/gms/internal/ads/zzfix;

    return-object v0
.end method

.method public final zzk(Z)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zze:Z

    return-object p0
.end method

.method public final zzl(I)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzm:I

    return-object p0
.end method

.method public final zzm(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzf:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzn(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzg:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbkh;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzh:Lcom/google/android/gms/internal/ads/zzbkh;

    return-object p0
.end method

.method public final zzp(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    return-object p0
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzbqs;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzn:Lcom/google/android/gms/internal/ads/zzbqs;

    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzga;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzga;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzd:Lcom/google/android/gms/ads/internal/client/zzga;

    return-object p0
.end method

.method public final zzr(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 1

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zza()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zze:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzb()Lcom/google/android/gms/ads/internal/client/zzco;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzl:Lcom/google/android/gms/ads/internal/client/zzco;

    :cond_0
    return-object p0
.end method

.method public final zzs(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->getManualImpressionsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zze:Z

    :cond_0
    return-object p0
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzerp;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzr:Lcom/google/android/gms/internal/ads/zzerp;

    return-object p0
.end method

.method public final zzu(Z)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzs:Z

    return-object p0
.end method

.method public final zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzt:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzw()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzx(J)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-object p0
.end method

.method public final zzy(Z)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzv:Z

    return-object p0
.end method

.method public final zzz(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzo:Lcom/google/android/gms/internal/ads/zzfix;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzp:Lcom/google/android/gms/internal/ads/zzfiy;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfiy;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfix;->zza(I)Lcom/google/android/gms/internal/ads/zzfix;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzw:Lcom/google/android/gms/ads/internal/client/zzcs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzw:Lcom/google/android/gms/ads/internal/client/zzcs;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzc:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zza:Lcom/google/android/gms/ads/internal/client/zzga;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzd:Lcom/google/android/gms/ads/internal/client/zzga;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzh:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzf:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzi:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzg:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzj:Lcom/google/android/gms/internal/ads/zzbkh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzh:Lcom/google/android/gms/internal/ads/zzbkh;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzm:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzs(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzn:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzr(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfjj;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzp:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzq:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzc:Lcom/google/android/gms/internal/ads/zzerp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzr:Lcom/google/android/gms/internal/ads/zzerp;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzs:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzt:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzt:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzv:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfjj;->zzv:Z

    return-object p0
.end method
