package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzaz extends zzaw {
    public zzaz() {
        this.zza.add(zzbl.APPLY);
        this.zza.add(zzbl.BLOCK);
        this.zza.add(zzbl.BREAK);
        this.zza.add(zzbl.CASE);
        this.zza.add(zzbl.DEFAULT);
        this.zza.add(zzbl.CONTINUE);
        this.zza.add(zzbl.DEFINE_FUNCTION);
        this.zza.add(zzbl.FN);
        this.zza.add(zzbl.IF);
        this.zza.add(zzbl.QUOTE);
        this.zza.add(zzbl.RETURN);
        this.zza.add(zzbl.SWITCH);
        this.zza.add(zzbl.TERNARY);
    }

    private static zzap zzc(zzg zzgVar, List<zzap> list) {
        zzh.zzi(zzbl.FN.name(), 2, list);
        zzap zzb = zzgVar.zzb(list.get(0));
        zzap zzb2 = zzgVar.zzb(list.get(1));
        if (zzb2 instanceof zzae) {
            List<zzap> zzm = ((zzae) zzb2).zzm();
            List<zzap> arrayList = new ArrayList<>();
            if (list.size() > 2) {
                arrayList = list.subList(2, list.size());
            }
            return new zzao(zzb.zzi(), zzm, arrayList, zzgVar);
        }
        throw new IllegalArgumentException(String.format("FN requires an ArrayValue of parameter names found %s", zzb2.getClass().getCanonicalName()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0129, code lost:
    
        if (r8.equals("continue") == false) goto L64;
     */
    @Override // com.google.android.gms.internal.measurement.zzaw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzap zza(String str, zzg zzgVar, List<zzap> list) {
        zzap zzc;
        zzap zzb;
        zzbl zzblVar = zzbl.ADD;
        int ordinal = zzh.zze(str).ordinal();
        if (ordinal == 2) {
            zzh.zzh(zzbl.APPLY.name(), 3, list);
            zzap zzb2 = zzgVar.zzb(list.get(0));
            String zzi = zzgVar.zzb(list.get(1)).zzi();
            zzap zzb3 = zzgVar.zzb(list.get(2));
            if (zzb3 instanceof zzae) {
                if (!zzi.isEmpty()) {
                    return zzb2.zzbK(zzi, zzgVar, ((zzae) zzb3).zzm());
                }
                throw new IllegalArgumentException("Function name for apply is undefined");
            }
            throw new IllegalArgumentException(String.format("Function arguments for Apply are not a list found %s", zzb3.getClass().getCanonicalName()));
        }
        if (ordinal == 15) {
            zzh.zzh(zzbl.BREAK.name(), 0, list);
            return zzap.zzh;
        }
        if (ordinal == 25) {
            return zzc(zzgVar, list);
        }
        if (ordinal == 41) {
            zzh.zzi(zzbl.IF.name(), 2, list);
            zzap zzb4 = zzgVar.zzb(list.get(0));
            zzap zzb5 = zzgVar.zzb(list.get(1));
            zzap zzb6 = list.size() > 2 ? zzgVar.zzb(list.get(2)) : null;
            zzap zzapVar = zzap.zzf;
            if (zzb4.zzg().booleanValue()) {
                zzc = zzgVar.zzc((zzae) zzb5);
            } else {
                zzc = zzb6 != null ? zzgVar.zzc((zzae) zzb6) : zzapVar;
            }
            return zzc instanceof zzag ? zzc : zzapVar;
        }
        if (ordinal == 54) {
            return new zzae(list);
        }
        if (ordinal != 57) {
            if (ordinal != 19) {
                if (ordinal == 20) {
                    zzh.zzi(zzbl.DEFINE_FUNCTION.name(), 2, list);
                    zzap zzc2 = zzc(zzgVar, list);
                    zzai zzaiVar = (zzai) zzc2;
                    if (zzaiVar.zzc() == null) {
                        zzgVar.zzg("", zzc2);
                    } else {
                        zzgVar.zzg(zzaiVar.zzc(), zzc2);
                    }
                    return zzc2;
                }
                if (ordinal == 60) {
                    zzh.zzh(zzbl.SWITCH.name(), 3, list);
                    zzap zzb7 = zzgVar.zzb(list.get(0));
                    zzap zzb8 = zzgVar.zzb(list.get(1));
                    zzap zzb9 = zzgVar.zzb(list.get(2));
                    if (zzb8 instanceof zzae) {
                        if (zzb9 instanceof zzae) {
                            zzae zzaeVar = (zzae) zzb8;
                            zzae zzaeVar2 = (zzae) zzb9;
                            int i10 = 0;
                            boolean z10 = false;
                            while (true) {
                                if (i10 < zzaeVar.zzc()) {
                                    if (z10 || zzb7.equals(zzgVar.zzb(zzaeVar.zze(i10)))) {
                                        zzb = zzgVar.zzb(zzaeVar2.zze(i10));
                                        if (!(zzb instanceof zzag)) {
                                            z10 = true;
                                        } else if (((zzag) zzb).zzc().equals("break")) {
                                            return zzap.zzf;
                                        }
                                    } else {
                                        z10 = false;
                                    }
                                    i10++;
                                } else {
                                    if (zzaeVar.zzc() + 1 == zzaeVar2.zzc()) {
                                        zzb = zzgVar.zzb(zzaeVar2.zze(zzaeVar.zzc()));
                                        if (zzb instanceof zzag) {
                                            String zzc3 = ((zzag) zzb).zzc();
                                            if (!zzc3.equals("return")) {
                                            }
                                        }
                                    }
                                    return zzap.zzf;
                                }
                            }
                            return zzb;
                        }
                        throw new IllegalArgumentException("Malformed SWITCH statement, case statements are not a list");
                    }
                    throw new IllegalArgumentException("Malformed SWITCH statement, cases are not a list");
                }
                if (ordinal != 61) {
                    switch (ordinal) {
                        case 11:
                            return zzgVar.zza().zzc(new zzae(list));
                        case 12:
                            zzh.zzh(zzbl.BREAK.name(), 0, list);
                            return zzap.zzi;
                        case 13:
                            break;
                        default:
                            return super.zzb(str);
                    }
                } else {
                    zzh.zzh(zzbl.TERNARY.name(), 3, list);
                    if (zzgVar.zzb(list.get(0)).zzg().booleanValue()) {
                        return zzgVar.zzb(list.get(1));
                    }
                    return zzgVar.zzb(list.get(2));
                }
            }
            if (list.isEmpty()) {
                return zzap.zzf;
            }
            zzap zzb10 = zzgVar.zzb(list.get(0));
            if (zzb10 instanceof zzae) {
                return zzgVar.zzc((zzae) zzb10);
            }
            return zzap.zzf;
        }
        if (list.isEmpty()) {
            return zzap.zzj;
        }
        zzh.zzh(zzbl.RETURN.name(), 1, list);
        return new zzag("return", zzgVar.zzb(list.get(0)));
    }
}
