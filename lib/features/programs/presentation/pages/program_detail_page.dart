import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/programs/domain/entity/program.dart';
import 'package:tanlu_management/features/programs/presentation/widgets/programs_detail/program_detail_body.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/features/programs/presentation/bloc/programs_bloc.dart';

class ProgramDetailPage extends StatefulWidget {
  final Program program;

  const ProgramDetailPage({super.key, required this.program});

  @override
  State<ProgramDetailPage> createState() => _ProgramDetailPageState();
}

class _ProgramDetailPageState
    extends BasePageState<ProgramDetailPage, ProgramsBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(FetchProgramDetail(widget.program.id));
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFF1E293B),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: AppText.b1(
          'Chi tiết giáo trình',
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF1E293B),
        ),
      ),
      body: BlocBuilder<ProgramsBloc, ProgramsState>(
        builder: (context, state) {
          final programToDisplay = state.detailProgram ?? widget.program;

          if (state.isDetailLoading && state.detailProgram == null) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.detailError.isNotEmpty && state.detailProgram == null) {
            return Center(child: Text(state.detailError));
          }

          return ProgramDetailBody(program: programToDisplay);
        },
      ),
    );
  }
}
